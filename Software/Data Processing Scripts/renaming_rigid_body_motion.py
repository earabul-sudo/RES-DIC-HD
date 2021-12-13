# -*- coding: utf-8 -*-
"""
Created on Fri Nov 26 21:14:04 2021

@author: pawel
"""


import glob
import numpy as np
import cv2
import os

source_folder = 'C:/Users/pawel/OneDrive/Desktop/hole_drilling_pictures/CFRP/4_th_sample/22_November_Sample_4_hole_8/Rigid_body_motion/'



os.chdir(source_folder)
files = glob.glob ("*.tif")



for i in range(len(files)):
    # print(files[i])
    old_file_name = source_folder + files[i]
        
    new_file_name = source_folder + 'Averaged_' + files[i][9]+files[i][10]+files[i][11] + '.tif'
    os.rename(old_file_name, new_file_name)


    print(new_file_name)



# new_file_name = "/home/career_karma/old_data.csv"

# os.rename(old_file_name, new_file_name)

# print("File renamed!") 