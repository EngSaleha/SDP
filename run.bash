#! bin/bash 
source /opt/ros/jazzy/setup.bash
source install/setup.bash

#ros2 run usb_cam usb_cam_node_exe --ros-args --params-file /home/RPViam/saleha/SDP/src/usb_cam/config/myParam.yaml

#ros2 run rqt_image_view rqt_image_view

ros2 launch ros2_aruco aruco_recognition.launch.py

#ros2 run ros2_aruco aruco_node --ros-args -p image_topic:=/image_raw 

#ros2 run ros2_aruco aruco_generate_marker --dictionary  DICT_4X4_250

# worked and show output of camera
#ros2 run opencv_cam opencv_cam_main --ros-args --params-file /home/RPViam/saleha/SDP/ost.yaml
#ros2 run opencv_cam opencv_cam_main
#ros2 run usb_cam usb_cam_node --ros-args -p video_device:=/dev/video0


#ros2 run usb_cam usb_cam_node_exe
#ros2 run opencv_cam opencv_cam_main

# This worked also and show the readinga 
#ros2 run camera_calibration cameracalibrator  --no-service-check --size 10x14 --square 0.02 --charuco_marker_size 0.015 --aruco_dict 4x4_50  -p charuco --ros-args -r image:=/image_raw 
#ros2 run camera_calibration cameracalibrator  --no-service-check --size 7x9 --square 0.02 -p chessboard --ros-args -r image:=/image_raw 