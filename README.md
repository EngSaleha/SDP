# Work Procedure 
1- SSH: 

From same network:
```
ssh RPViam@viam.local
```

Via Internet: 
find the ip from: https://whatismyipaddress.com/
```
ssh RPViam@ip
```

2- To bring the final version admitted to gitHub: 

  - For first time: `git clone git@github.com:EngSaleha/SDP.git`
  - After building the file: `git pull`

3- run the setup file (inside SDP file): This will activate the virtual environment, ensure that all lib are installed, and build the work space

`bash new_setup.bash`

4- Use VS, go to source control section, there you can track the changes you made. 

  - If you want to save changes (you reached stable code, but still working on it): click + to put it in stages changes
  - If you ensured that the code is working fine and you want to add it to GitHub:
    
    add your name and the change you made in the comments section ***important, to track the activiteis of each member***, then click on commit.

    You can either click on Sync changes (will push and pull again so you need to enter the password twice) or write in the terminal `git push` to push the changes only 



***Important Notes***
- Do not change\ modify any thing related to the network\ OS settings without discussing other team members
- Do not rename\ change directory of the files after building them as it may cause errors. Be orgainised and precisely create everything carefully. If any mistakes happened, discuess with the team memebers before taking any action. 

# ROS2 with RP5 

## Access to RP:

1- SSH: 
```
ssh RPViam@viam.local

ssh RPViam@ip
```

2- Virtual environment activation: 

source ~/sdp_ws/venv/bin/activate


3- Sourcing ROS: source /opt/ros/jazzy/setup.bash  (added to .bashrc so no need to write it each time)

## Building ROS Project:
### Steps:

- Creating new workspace:
  
  1- `mkdir your_ws` go to it by `cd your_ws`
  
  2- `mkdir src` here you are going to build the packages
  
  3- you should be in the ws directory, check that you have all dependesis: `rosdep install -i --from-path src --rosdistro jazzy -y`
  
  4- `colcon build` Note Other useful arguments for colcon build:

      `packages-up-to`: builds the package you want, plus all its dependencies, but not the whole workspace (saves time)
      
      `symlink-install`: saves you from having to rebuild every time you tweak python scripts
      
      `executor sequential`: processes the packages one by one instead of using parallelism

- Creating new packages: 

  1- Go to the `src` directory inside the ws

  2- If you are using package from github: `git clone [YOUR_REPOSITORY_LINK]`

  3- Go back to the ws directory

  4- `colcon build`

  5- Ensure you sourced ROS: `source ~/your_ws/install/setup.bash`  (added to .bashrc so no need to write it each time)

  you can run the code from the ws directory: `ros2 run package node`

- Connecting files to gitHub: > you can use VS terminal 
  
  1- `mkdir file`

  2- `git clone [paste the respority link here]`

  3- `bash .new_setup.bash`
  

### Refer to this before:
- Workspace:
https://docs.ros.org/en/jazzy/Tutorials/Beginner-Client-Libraries/Creating-A-Workspace/Creating-A-Workspace.html

- Packages:
https://docs.ros.org/en/jazzy/Tutorials/Beginner-Client-Libraries/Creating-Your-First-ROS2-Package.html

- Using Virtual Environment (if working with Python):
https://docs.ros.org/en/jazzy/How-To-Guides/Using-Python-Packages.html#installing-via-a-virtual-environment

  Note: The colocn_venv example here represents a workspace
  
- Tutorial and explanation of basics: https://www.youtube.com/playlist?list=PLC-SsBhVny0UA3xO-B0jZboxCbSrs-Sd0
  
### Ubuntu:

### ROS2:
- Follow the tutorial: 
- Check if dep are installed properly: 

### Network Manager: 
- Installing it:
  `sudo apt-get install network-manager`

  Check if it is used properly: `nmcli general status` . It should return: `connected`
  
  If not:
  
  `sudo nano /etc/netplan/50-cloud-init.yamlcloud-init.yaml `  Then, change `renderer` to: `network manager`
  
  ```
  sudo netplan apply 

  sudo systemctl restart NetworkManager

  nmcli general status
  ```
  
- Editing Conncetion:
  `sudo nmtui` 

- Show Connections:
Documentaion (refer to it always and understand before performing any action):
https://ubuntu.com/core/docs/networkmanager

- Find ip: `ip a`



