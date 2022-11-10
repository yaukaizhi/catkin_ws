from cProfile import label
import numpy as np
import gym
import matplotlib.pyplot as plt
import math
import statistics

learn_rate=0.2
discount_rate=0.9
epsilon=0.8
min_eps=0
num_train_ep=2000
num_test_ep=50
aim_streak=100
TOTAL_TRIES=100
Episode_list=[]
NUM_OF_TRAIN_EPISODES_NEEDED_list=[]



# Import and initialize Mountain Car Environment
env = gym.make("MountainCar-v0")
#env = gym.make("MountainCar-v0",render_mode='human')
obv, info = env.reset()

# Determine size of discretized state space
num_states = (env.observation_space.high - env.observation_space.low)*\
                    np.array([10, 100])
num_states = np.round(num_states, 0).astype(int) + 1

# Initialize Q table
Q = np.random.uniform(low = -1, high = 1,size = (num_states[0], num_states[1], env.action_space.n))

# Define Q-learning function
def QLearning(env, learning, discount, epsilon, min_eps, episodes):
    streak=0
    REWARD_THRESHOLD=-180
    # Initialize variables to track rewards
    reward_list = []
    ave_reward_list = []
    
    # Calculate episodic reduction in epsilon
    #reduction = (epsilon - min_eps)/episodes
    
    # Run Q learning algorithm
    for i in range(episodes):
        # Initialize parameters
        done = False
        truncated=False
        tot_reward, reward = 0,0
        state,info = env.reset()
        # Render environment for last 3 episodes
        if i >= (episodes - 3):
            env=gym.make("MountainCar-v0")
            state,info = env.reset()
        # Discretize state
        state_adj = (state - env.observation_space.low)*np.array([10,100])
        state_adj = np.round(state_adj, 0).astype(int)
    
        while not done and not(truncated):   
                
            # Determine next action - epsilon greedy strategy
            if np.random.random() < 1 - epsilon:
                action = np.argmax(Q[state_adj[0], state_adj[1]]) 
            else:
                action = np.random.randint(0, env.action_space.n)
                
            # Get next state and reward
            state2, reward, done,truncated, info = env.step(action) 
            
            # Discretize state2
            state2_adj = (state2 - env.observation_space.low)*np.array([10, 100])
            state2_adj = np.round(state2_adj, 0).astype(int)
            
            #Reward it for getting to high speeds
            for j in range(7):
                if state2[1]>=j/100 or state2[1]<=-j/100:
                    reward+=j/10

            if done:
                reward+=50   
                
            # Adjust Q value for current state
            delta_Q = learning*(reward + discount*np.max(Q[state2_adj[0], state2_adj[1]]) - Q[state_adj[0], state_adj[1],action]) 
            Q[state_adj[0], state_adj[1],action] += delta_Q
                                     
            # Update variables
            tot_reward += reward
            state_adj = state2_adj
        
        if done:
            streak+=1
        else:
            streak=0
        
        # Decay epsilon
        if epsilon > min_eps and tot_reward>=REWARD_THRESHOLD:
            epsilon=max(min_eps, min(1, 1.0 - math.log10((episodes+1)/25)))
            #epsilon_decay=epsilon*0.9**i
            #epsilon_decay=1-(0.05*i)
            #epsilon=max(min_eps,epsilon_decay)
            REWARD_THRESHOLD=REWARD_THRESHOLD+30

        if (i+1) % 100 == 0:
            #ave_reward_list.append(tot_reward)  
            print('Episode {} Reward: {}'.format(i+1, tot_reward))
        Episode_list.append(i)
        #print("Streak:",streak)
        if streak>=aim_streak:
            #print(streak)
            break
    NUM_OF_EPISODES_NEEDED=len(Episode_list)
    env.close()
    return  NUM_OF_EPISODES_NEEDED

def test(env, learning, discount, epsilon, min_eps, episodes):
    env=gym.make("MountainCar-v0")

    # Initialize variables to track rewards
    reward_list = []
    ave_reward_list = []
    
    # Calculate episodic reduction in epsilon
    #reduction = (epsilon - min_eps)/episodes
    
    # Test Q learning algorithm
    for i in range(episodes):
        # Initialize parameters
        done = False
        truncated=False
        tot_reward, reward = 0,0
        state,info = env.reset()
        # Render environment for last 3 episodes
        if i >= (episodes - 3):
            env=gym.make("MountainCar-v0")
            state,info = env.reset()

        # Discretize state
        state_adj = (state - env.observation_space.low)*np.array([10, 100])
        state_adj = np.round(state_adj, 0).astype(int)
    
        while not done and not(truncated):   
            
                
            # Determine next action - epsilon greedy strategy
            if np.random.random() < 1 - epsilon:
                action = np.argmax(Q[state_adj[0], state_adj[1]]) 
            else:
                action = np.random.randint(0, env.action_space.n)
                
            # Get next state and reward
            state2, reward, done,truncated, info = env.step(action) 
            
            # Discretize state2
            state2_adj = (state2 - env.observation_space.low)*np.array([10, 100])
            state2_adj = np.round(state2_adj, 0).astype(int)
            
            # Update variables
            tot_reward += reward
            state_adj = state2_adj
        
        # Track rewards
        #reward_list.append(tot_reward)
        
        if (i+1) % 1 == 0:
            #ave_reward = np.mean(reward_list)
            ave_reward_list.append(tot_reward)
            #reward_list = []  
            print('Episode {} Reward: {}'.format(i+1, tot_reward))
            
    env.close()
    return ave_reward_list

def plot_train(rewards_train):
    # Plot Rewards
    plt.plot((np.arange(len(rewards_train)) + 1), rewards_train, "-r", label="Training Rewards")
    plt.xlabel('Episodes')
    plt.ylabel('Reward')
    plt.title('Reward vs Episodes') 

def plot_test(rewards_test):
    # Plot Rewards
    plt.plot((np.arange(len(rewards_test)) + 1), rewards_test, "-b",label="Testing Rewards")
    plt.xlabel('Episodes')
    plt.ylabel('Reward')
    plt.title('Reward vs Episodes') 

def Average(list):
    return sum(list)/len(list)

if __name__ == "__main__":
    # Run Q-learning algorithm
    for i in range(TOTAL_TRIES):
        # Reset Q table
        Q = np.random.uniform(low = -1, high = 1,size = (num_states[0], num_states[1], env.action_space.n))
        Episode_list=[]
        print('training:',i+1)
        NUM_OF_TRAIN_EPISODES_NEEDED = QLearning(env, learn_rate, discount_rate, epsilon,min_eps,num_train_ep)
        NUM_OF_TRAIN_EPISODES_NEEDED_list.append(NUM_OF_TRAIN_EPISODES_NEEDED)
        print('testing...')
        rewards_test =test(env, 0, discount_rate, 0,0,num_test_ep)
    print("train list:",NUM_OF_TRAIN_EPISODES_NEEDED_list)
    AVERAGE_NUM_OF_TRAIN_EPISODES_NEEDED=Average(NUM_OF_TRAIN_EPISODES_NEEDED_list)
    print("Average # of eps:",AVERAGE_NUM_OF_TRAIN_EPISODES_NEEDED)
    print("Standard Dev:",statistics.stdev(NUM_OF_TRAIN_EPISODES_NEEDED_list))
    AVERAGE_TEST_EPISODE_SCORE=Average(rewards_test)
    print("Average test score:",AVERAGE_TEST_EPISODE_SCORE)

    '''''
    plt.subplot(211)
    plot_train(rewards_train)
    plt.legend(loc="upper left")
    plt.subplot(212)
    plot_test(rewards_test)
    plt.legend(loc="upper left")
    plt.show()
    '''

