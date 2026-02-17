cd /code
source /opt/ros/humble/setup.bash
colcon build --symlink-install
source ./install/setup.bash
ros2 launch omnicar launch_bot.launch.py