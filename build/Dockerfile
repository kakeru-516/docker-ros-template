FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y curl lsb-release gnupg git python3-pip

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -
RUN apt-get update && apt-get install -y ros-noetic-desktop-full

RUN mkdir -p ~/catkin_ws/src
RUN cd ~/catkin_ws/src && . /opt/ros/noetic/setup.sh && catkin_init_workspace
RUN echo "source /opt/ros/noetic/setup.sh" >> ~/.bashrc
RUN echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
RUN . /opt/ros/noetic/setup.sh && cd ~/catkin_ws && catkin_make