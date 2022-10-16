import gym

env = gym.make('MountainCar-v0', render_mode="human")
observation, info = env.reset()
actionl=0
actions=1
actionr=2
for t in range(500):
    env.render()
    observation, reward, terminated, truncated, info = env.step(actionl)
    observation, reward, terminated, truncated, info = env.step(actions)
    #observation, reward, terminated, truncated, info = env.step(actionr)
    #observation, reward, terminated, truncated, info = env.step(actions)
env.close()