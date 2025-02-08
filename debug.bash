#!/bin/bash

# List running nodes
echo "Listing ROS 2 nodes..."
ros2 node list

# Show node info
echo "Showing node info..."
ros2 node info /<node_name>

# List topics
echo "Listing topics..."
ros2 topic list

# Show topic info
echo "Showing topic info..."
ros2 topic info /<topic_name>

# Echo topic messages
echo "Echoing topic messages..."
ros2 topic echo /<topic_name>

# Check topic frequency
echo "Checking topic frequency..."
ros2 topic hz /<topic_name>

# Check topic bandwidth
echo "Checking topic bandwidth..."
ros2 topic bw /<topic_name>

# List message types
echo "Listing available message types..."
ros2 interface list

# Show message structure
echo "Showing message structure..."
ros2 interface show <msg_type>

# List active services
echo "Listing active services..."
ros2 service list

# Show service type
echo "Showing service type..."
ros2 service type /<service_name>

# Call a service manually
echo "Calling service..."
ros2 service call /<service_name> <srv_type> "<arguments>"

# List parameters
echo "Listing parameters..."
ros2 param list

# Get a parameter
echo "Getting parameter value..."
ros2 param get /<node_name> <param_name>

# Set a parameter
echo "Setting parameter value..."
ros2 param set /<node_name> <param_name> <value>

# Debug logging
echo "Setting debug logging level..."
export RMW_CONSOLE_LOG_LEVEL=debug
ros2 run <package> <executable>

# Debug TF tree
echo "Viewing TF frames..."
ros2 run tf2_tools view_frames

# Echo a TF transform
echo "Echoing TF transform..."
ros2 run tf2_ros tf2_echo <frame1> <frame2>

# Debug launch files
echo "Debugging launch file..."
ros2 launch <package> <launch_file>.launch.py --debug

# Debug lifecycle nodes
echo "Listing lifecycle nodes..."
ros2 lifecycle list

# Get lifecycle state
echo "Getting lifecycle state..."
ros2 lifecycle get /<node_name>

# Set lifecycle state
echo "Setting lifecycle state..."
ros2 lifecycle set /<node_name> <state>

# Run RQt tools
echo "Starting RQt Graph..."
rqt_graph

echo "Starting RQt Console..."
rqt_console

echo "Starting RQt TF Tree..."
rqt_tf_tree

# Run RViz for visualization
echo "Launching RViz..."
rviz2

echo "Debugging script executed. Replace placeholders with actual values."
