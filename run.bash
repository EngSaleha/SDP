#! bin/bash 
source /opt/ros/jazzy/setup.bash
source install/setup.bash

#ros2 run opencv_cam opencv_cam_main >> worked and show output of camera
#ros2 run usb_cam usb_cam_node --ros-args -p video_device:=/dev/video0


# ros2 run opencv_cam opencv_cam_main

# This worked also and show the readinga 
ros2 run camera_calibration cameracalibrator  --no-service-check --size 10x14 --square 0.02 --charuco_marker_size 0.015 --aruco_dict 4x4_50  -p charuco --ros-args -r image:=/image_raw 
