FROM ghcr.io/sloretz/ros:humble-ros-base

SHELL [ "/bin/bash" , "-c" ]

# Upgrade all packages
RUN sudo apt update && sudo apt upgrade -y

# install extra ros pacakges
RUN sudo apt install ros-humble-foxglove-bridge -y
RUN sudo apt install ros-humble-joint-state-publisher -y
RUN sudo apt install ros-humble-joint-state-publisher-gui -y
RUN sudo apt install ros-humble-ros2-control -y
RUN sudo apt install ros-humble-ros2-controllers -y
RUN sudo apt install ros-humble-twist-mux -y
RUN sudo apt install ros-humble-twist-stamper -y
RUN sudo apt update
RUN sudo apt install usbutils -y
RUN sudo apt install libserial-dev -y
RUN sudo apt install ros-humble-usb-cam -y
RUN sudo apt-get install ros-humble-joy -y
RUN sudo apt-get install ros-humble-teleop-twist-joy -y
RUN sudo apt-get install ros-humble-xacro -y


# Install essential packages
RUN sudo apt install -y wget

# Add sourcing ROS setup.bash to .bashrc
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc

COPY ./sub /sub
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["./entrypoint.sh"]