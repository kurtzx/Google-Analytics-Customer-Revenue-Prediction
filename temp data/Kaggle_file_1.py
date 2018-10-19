# -*- coding: utf-8 -*-
"""
Created on Sun Sep 16 11:48:36 2018

@author: Administrator
"""



import pandas as pd
import numpy as np
import json as js
import requests
import rpy2.robjects as robjects
from rpy2.robjects import pandas2ri
pandas2ri.activate()

#readRDS = robjects.r['readRDS']
#train_df = readRDS("D:/All Files/BU/Kaggle/Google Analytics/Google-Analytics-Customer-Revenue-Prediction/temp data/df_train3.rds")
#train_df = pandas2ri.ri2py(train_df)
#train_df.to_pickle("train_data")
df = pd.read_pickle("train_data")