#! bin/bash

if [ ! -d "env" ]; then
  virtualenv -p python3 ./env
fi
colcon build --symlink-install

