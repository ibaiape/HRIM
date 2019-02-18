#!/bin/bash
set -e
cd /home/root/ros2_ws/src/hrim
pip3 install -r requirements.txt
python3 setup.py install

hrim generate --platform ros2 all
cd generated
ls

/bin/bash -c "source /opt/ros/crystal/setup.bash && colcon build --merge-install"
