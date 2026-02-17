FROM ghcr.io/sloretz/ros:humble-ros-base

SHELL [ "/bin/bash" , "-c" ]

# Upgrade all packages
RUN sudo apt-get update && sudo apt-get upgrade -y

# install extra ros pacakges
RUN sudo apt-get install -y \
#required Ros Packages
    ros-humble-xacro \
    ros-humble-joy \
    ros-humble-teleop-twist-joy \
#Project Specific Ros Packages
    ros-humble-foxglove-bridge \
    ros-humble-joint-state-publisher \
    ros-humble-joint-state-publisher-gui \
    ros-humble-ros2-control \
    ros-humble-ros2-controllers \
    ros-humble-twist-mux \
    ros-humble-twist-stamper \
    ros-humble-imu-filter-madgwick \
    ros-humble-robot-localization \
    ros-humble-usb-cam \
    ros-humble-nmea-navsat-driver \
#Project Specific Liberies/Extra Packages
    usbutils \
    libserial-dev \
    libi2c-dev \


# Install essential packages
RUN sudo apt-get install -y wget

# Add sourcing ROS setup.bash to .bashrc
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc

COPY ./code /code
COPY ./entrypoint.sh /entrypoint.sh
RUN source /opt/ros/humble/setup.bash && cd /code && colcon build --symlink-install
RUN chmod +x /entrypoint.sh
CMD ["./entrypoint.sh"]