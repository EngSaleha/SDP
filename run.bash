#! bin/bash 
. env/bin/activate
source /opt/ros/jazzy/setup.bash
colcon build
source install/setup.bash
ros2 run ina219_driver ina219_node