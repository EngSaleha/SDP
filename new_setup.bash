#! bin/bash

if [ ! -d "env" ]; then
  virtualenv -p python3 ./env
fi
. env/bin/activate
pip install -r requirments.txt
colcon build
