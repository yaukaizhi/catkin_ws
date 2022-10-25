from cProfile import label
import numpy as np
import gym
import matplotlib.pyplot as plt
import math

learn_rate=0.2
discount_rate=0.9
epsilon=0.8
min_eps=0
num_train_ep=5000
num_test_ep=5000

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
        state_adj = (state - env.observation_space.low)*np.array([10, 100])
        state_adj = np.round(state_adj, 0).astype(int)
    
        while done != True and not(truncated):   
            
                
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
            
            #Allow for terminal states
            if (done or truncated) and state2[0] >= 0.5:
                Q[state_adj[0], state_adj[1], action] = reward
                
            # Adjust Q value for current state
            else:
                delta = learning*(reward + 
                                 discount*np.max(Q[state2_adj[0], 
                                                   state2_adj[1]]) - 
                                 Q[state_adj[0], state_adj[1],action])
                Q[state_adj[0], state_adj[1],action] += delta
                                     
            # Update variables
            tot_reward += reward
            state_adj = state2_adj
        
        # Decay epsilon
        if epsilon > min_eps:
            epsilon=max(min_eps, min(1, 1.0 - math.log10((episodes+1)/25)))

        
        # Track rewards
        reward_list.append(tot_reward)
        
        if (i+1) % 100 == 0:
            ave_reward = np.mean(reward_list)
            ave_reward_list.append(tot_reward)
            reward_list = []  
            print('Episode {} Reward: {}'.format(i+1, ave_reward))
            
    env.close()
    return ave_reward_list

def test(env, learning, discount, epsilon, min_eps, episodes):
    env=gym.make("MountainCar-v0")

    # Initialize variables to track rewards
    reward_list = []
    ave_reward_list = []
    
    # Calculate episodic reduction in epsilon
    reduction = (epsilon - min_eps)/episodes
    
    # Test Q learning algorithm
    for i in range(episodes):
        # Initialize parameters
        done = False
        truncated=False
        tot_reward, reward = 0,0
        state,info = env.reset()

        # Discretize state
        state_adj = (state - env.observation_space.low)*np.array([10, 100])
        state_adj = np.round(state_adj, 0).astype(int)
    
        while done != True and not(truncated):   
            
                
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
            
        
            #Allow for terminal states
            if (done or truncated) and state2[0] >= 0.5:
                Q[state_adj[0], state_adj[1], action] = reward
                
            # Adjust Q value for current state
            else:
                delta = learning*(reward + discount*np.max(Q[state2_adj[0], state2_adj[1]]) - Q[state_adj[0], state_adj[1],action])
                Q[state_adj[0], state_adj[1],action] += delta
                                     
            # Update variables
            tot_reward += reward
            state_adj = state2_adj
        
        # Decay epsilon
        if epsilon > min_eps:
            epsilon -= reduction
        # Track rewards
        reward_list.append(tot_reward)
        
        if (i+1) % 100 == 0:
            ave_reward = np.mean(reward_list)
            ave_reward_list.append(tot_reward)
            reward_list = []  
            print('Episode {} Reward: {}'.format(i+1, ave_reward))
            
    env.close()
    return ave_reward_list

def plot_train(rewards_train):
    # Plot Rewards
    plt.plot(100*(np.arange(len(rewards_train)) + 1), rewards_train, "-r", label="Training Rewards")

def plot_test(rewards_test):
    # Plot Rewards
    plt.plot(100*(np.arange(len(rewards_test)) + 1), rewards_test, "-b",label="Testing Rewards")
    plt.xlabel('Episodes')
    plt.ylabel('Average Reward')
    plt.title('Avergae Reward vs Episodes') 

if __name__ == "__main__":
    # Run Q-learning algorithm
    print('training...')
    rewards_train = QLearning(env, learn_rate, discount_rate, epsilon,min_eps,num_train_ep)
    print('testing...')
    rewards_test =test(env, 0, discount_rate, 0,0,num_test_ep)
    plot_train(rewards_train)
    plot_test(rewards_test)
    plt.legend(loc="upper left")
    plt.show()
    

