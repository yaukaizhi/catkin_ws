import gym

env = gym.make('CartPole-v1', render_mode="human")
action=0
angle_thresh = 0 
for i_episode in range(2):
    observation,info = env.reset()
    for t in range(500):
        env.render()
        #print(observation)
        #Actions: 0 = push left; 1 = push right
        # DO: try also observation[3] --> pole tip velocity.
        if (observation[2] < angle_thresh and observation[3]<0.2):
            action = 0
        elif (observation[2] > angle_thresh and observation[3]>-0.2): 
            action = 1
        else:
            action = not(action)
        observation, reward, terminated, truncated, info = env.step(action)
        if terminated or truncated:
            observation, info = env.reset()

        # print('reward: {0}'.format(reward))
        #if done:
        #    print("Episode finished after {} timesteps".format(t+1))
        #    break
env.close()