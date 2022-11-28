import os
import time

import numpy as np
import torch
import torch.nn as nn
import torch.nn.functional as F
from numpy import inf
from torch.utils.tensorboard import SummaryWriter


#show_preview=False
IM_WIDTH=1920
IM_HEIGHT=1080

class CarEnv:
    steer=1
    im_width=IM_WIDTH
    im_height=IM_HEIGHT

    #def __init__(self):
        #initialize world here

    def reset (self): #Resets the environment
        self.collision_list=[]
        self.actor_list=[]
        

    def step (self,action): #Agent takes a step
        return obv,reward,done,truncated,info