sudo apt-get update && sudo apt-get upgrade -y
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update 
sudo apt install ros-melodic-desktop-full
sudo apt install python-pip
sudo pip install -U rosdep
sudo rosdep init
rosdep update
#echo "source /opt/ros/melodic/setup.zsh" >> ~/.zshrc
#source ~/.zshrc
source /opt/ros/melodic/setup.zsh
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential
printenv | grep ROS
export DEVROS=~/dev/catkin_ws
mkdir -p $DEVROS/src
cd $DEVROS
catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python3
source devel/setup.zsh
echo $ROS_PACKAGE_PATH
sudo apt-get install ros-melodic-ros-tutorials

