import gym
import numpy as np
import random
import math
import time
from time import sleep
import matplotlib.pyplot as plt
import csv

#lists to visualize data in graphs
timestep_test_list=[]
NUM_OF_EPISODES_NEEDED_list=[]
AVERAGE_NUM_OF_EPISODES_NEEDED_list=[]
rewards_train_list=[]

tt=0
## Initialize the "Cart-Pole" environment
env = gym.make('CartPole-v1')

# Initializing the random number generator
np.random.seed(int(time.time()))

## Defining the environment related constants

# Number of discrete states (bucket) per state dimension
NUM_BUCKETS = (1, 1, 6, 3)  # (x, x', theta, theta')
# Number of discrete actions
NUM_ACTIONS = env.action_space.n # (left, right)
# Bounds for each discrete state
STATE_BOUNDS = list(zip(env.observation_space.low, env.observation_space.high))
STATE_BOUNDS[1] = (-0.5, 0.5)
STATE_BOUNDS[3] = (-math.radians(50), math.radians(50))
# Index of the action
ACTION_INDEX = len(NUM_BUCKETS)

## Creating a Q-Table for each state-action pair
q_table = np.zeros(NUM_BUCKETS + (NUM_ACTIONS,))

## Learning related constants
# Continue here
MIN_EXPLORE_RATE = 0.01
MIN_LEARNING_RATE = 0.1
TEST_RAND_PROB = 0.2

## Defining the simulation related constants
NUM_TRAIN_EPISODES = 300
NUM_TEST_EPISODES = 50
MAX_TRAIN_T = 500
MAX_TEST_T = 250
STREAK_TO_END = 120
SOLVED_T = 199
VERBOSE = False
TOTAL_TRIES=100

def train():

    ## Instantiating the learning related parameters
    learning_rate = get_learning_rate(0)
    explore_rate = get_explore_rate(0)
    discount_factor = 0.99  # since the world is unchanging
    tt=0
    reward_thresh=1
    timestep_list=[]
    num_train_streaks = 0
    for episode in range(NUM_TRAIN_EPISODES):
        # Reset the environment
        obv,_ = env.reset()

        # the initial state
        state_0 = state_to_bucket(obv)

        for t in range(MAX_TRAIN_T):
            #env.render()

            # Select an action
            action = select_action(state_0, explore_rate)

            # Execute the action
            obv, reward, done,truncated, _ = env.step(action)
            done=done or truncated
            # Observe the result
            state = state_to_bucket(obv)

            # Update the Q based on the result
            best_q = np.amax(q_table[state])
            q_table[state_0 + (action,)] += learning_rate*(reward + discount_factor*(best_q) - q_table[state_0 + (action,)])

            # Setting up for the next iteration
            state_0 = state

            # Print data
            if (VERBOSE):
                print("\nEpisode = %d" % episode)
                print("t = %d" % t)
                print("Action: %d" % action)
                print("State: %s" % str(state))
                print("Reward: %f" % reward)
                print("Best Q: %f" % best_q)
                print("Explore rate: %f" % explore_rate)
                print("Learning rate: %f" % learning_rate)
                print("Streaks: %d" % num_train_streaks)

                print("")


            if done:
                if episode%10==0:

                    print("Episode %d finished after %f time steps" % (episode, t))
                if (t >= SOLVED_T):
                    num_train_streaks += 1
                    tt+=1
                else:
                    num_train_streaks = 0
                break
            #sleep(0.25)
            
        # It's considered done when it's solved over 120 times consecutively
        #if num_train_streaks > STREAK_TO_END:
        #    break

        # Update parameters
        #explore_rate = get_explore_rate(episode)
        if t>=reward_thresh:
            explore_rate=max(MIN_EXPLORE_RATE, min(1, 1.0 - math.log10((t+1)/10)))
            reward_thresh=reward_thresh+5
        #print("rate:",explore_rate)
        learning_rate = get_learning_rate(episode) 
        timestep_list.append(t)
    #NUM_OF_EPISODES_NEEDED=len(timestep_list) #records no. of episodes needed to train
    return timestep_list


def test():

    num_test_streaks = 0
    env = gym.make('CartPole-v1')
    #env = gym.make('CartPole-v1',render_mode='human')
    state,info = env.reset()

    for episode in range(NUM_TEST_EPISODES):
        if episode == (NUM_TEST_EPISODES - 1):
            env=gym.make('CartPole-v1')
        # Reset the environment
        obv,_ = env.reset()

        # the initial state
        state_0 = state_to_bucket(obv)

        # basic initializations
        tt = 0
        done = False

        while not(done):
            tt += 1
            #env.render()

            # Select an action
            action = select_action(state_0, 0)
            # action = select_action(state_0, TEST_RAND_PROB)
            # action = select_action(state_0, 0.01)

            # Execute the action
            obv, reward, done,truncated, _ = env.step(action)
            done=done or truncated
            # Observe the result
            state_0 = state_to_bucket(obv)
        
        #print("Test episode %d; time step %f." % (episode, tt))
        timestep_test_list.append(tt)
    return timestep_test_list

def select_action(state, explore_rate):
    # Select a random action
    if random.random() < explore_rate:
        action = env.action_space.sample()
    # Select the action with the highest q
    else:
        action = np.argmax(q_table[state])
    return action



def get_explore_rate(t):
    return max(MIN_EXPLORE_RATE, min(1, 1.0 - math.log10((t+1)/10)))

def get_learning_rate(t):
    return max(MIN_LEARNING_RATE, min(0.5, 1.0 - math.log10((t+1)/25)))

def state_to_bucket(state):
    bucket_indice = []
    for i in range(len(state)):
        if state[i] <= STATE_BOUNDS[i][0]:
            bucket_index = 0
        elif state[i] >= STATE_BOUNDS[i][1]:
            bucket_index = NUM_BUCKETS[i] - 1
        else:
            # Mapping the state bounds to the bucket array
            bound_width = STATE_BOUNDS[i][1] - STATE_BOUNDS[i][0]
            offset = (NUM_BUCKETS[i]-1)*STATE_BOUNDS[i][0]/bound_width
            scaling = (NUM_BUCKETS[i]-1)/bound_width
            bucket_index = int(round(scaling*state[i] - offset))
            # For easier visualization of the above, you might want to use
            # pen and paper and apply some basic algebraic manipulations.
            # If you do so, you will obtaint (B-1)*[(S-MIN)]/W], where
            # B = NUM_BUCKETS, S = state, MIN = STATE_BOUNDS[i][0], and
            # W = bound_width. This simplification is very easily to
            # to visualize, i.e. num_buckets x percentage in width.
        bucket_indice.append(bucket_index)
    return tuple(bucket_indice)

def Average(list):
    return sum(list)/len(list)

if __name__ == "__main__":
    for i in range(TOTAL_TRIES):
        print('Training:',i)
        ## Initialize new Q Table
        q_table = np.zeros(NUM_BUCKETS + (NUM_ACTIONS,))
        TOTAL_TRAIN_REWARDS=train()
        #NUM_OF_EPISODES_NEEDED_list.append(NUM_OF_TRAIN_EPISODES_NEEDED) #records no. of episodes needed to train into a list
        #rewards_train_list.append(rewards_train)
        #print('Testing ...')
        #TEST_EPISODES_SCORE=test()
        with open('CartPole_Rewards1Thresh.csv','a') as f:
         write=csv.writer(f)
         write.writerow(TOTAL_TRAIN_REWARDS)
    #AVERAGE_NUM_OF_TRAIN_EPISODES_NEEDED=Average(NUM_OF_EPISODES_NEEDED_list) #averages no. of episodes
    #print("Standard Dev:",statistics.stdev(NUM_OF_EPISODES_NEEDED_list))
    #print("Average # of eps:",AVERAGE_NUM_OF_TRAIN_EPISODES_NEEDED)
    #AVERAGE_TEST_EPISODE_SCORE=Average(TEST_EPISODES_SCORE)
    #print("Average test score:",AVERAGE_TEST_EPISODE_SCORE)
    #print(rewards_train_list)
    
    '''
    #print(q_table)
    plt.subplot(211)
    plt.plot((np.arange(len(TOTAL_TRAIN_REWARDS))), TOTAL_TRAIN_REWARDS, "-r", label="Training Timestep")
    plt.xlabel('Episodes')
    plt.ylabel('Timestep')
    plt.title('Training Timestep vs Episodes') 
   
    plt.subplot(212)
    plt.plot((np.arange(len(timestep_test_list)) + 1), timestep_test_list, "-b", label="Testing Timestep")
    plt.xlabel('Episodes')
    plt.ylabel('Timestep')
    plt.title('Testing Timestep vs Episodes')
    
    plt.show()
    '''