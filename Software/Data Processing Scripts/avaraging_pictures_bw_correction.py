# -*- coding: utf-8 -*-
"""
Created on Tue Nov 23 18:11:26 2021

@author: pawel
"""

import glob
import numpy as np
import cv2
import os

#IMPORTANT - the files must be sorted into the subfolders "Increment_1, Inrement_2", then the loop will average everything 
#in the subfolders, remember to change number of increments! 


def average_bw(increment_number, source_folder, destination_folder):
    os.chdir(source_folder)
    files = glob.glob ("*.tif")
    # Import all image files with the .jpg extension
    image_data = []
    for my_file in files:
        this_image = cv2.imread(my_file, 2) #flag=2 converts to greyscale
        image_data.append(this_image)
     
    # Calculate blended image
    dst = image_data[0]
    for i in range(len(image_data)):
        if i == 0:
            pass
        else:
            alpha = 1.0/(i + 1)
            beta = 1.0 - alpha
            dst = cv2.addWeighted(image_data[i], alpha, dst, beta, 0.0)
     
    # Save blended image
    file_name = destination_folder + 'Avg_' + str(increment_number) + ".tif"
    cv2.imwrite(file_name, dst)
    
    

increments = 27

for i in range (1,increments+1,1):
    print(i)

    source_folder = 'C:/Users/pawel/OneDrive/Desktop/hole_drilling_pictures/CFRP/4_th_sample/22_November_Sample_4_hole_8/Increment_' + str(i)


    destination_folder = 'C:/Users/pawel/OneDrive/Desktop/hole_drilling_pictures/CFRP/4_th_sample/22_November_Sample_4_hole_8/Averaged/'
    
    
    average_bw(i, source_folder, destination_folder)


