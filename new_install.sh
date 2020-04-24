echo "
\n
=================================\n
APT
=================================\n
\n"

sudo apt-get update --fix-missing &&\
sudo apt-get upgrade &&\
sudo apt-get install -y \
        curl\
        wget \
        geany \
        geany-plugins \
        vim \
        htop \
        mlocate \
        apt-transport-https \
        ca-certificates \
        build-essential\        
        git \
        git-cola \
        python3-dev \
        python3-distutils \
        python3-venv \
        software-properties-common \
        zip \
        unzip\
        p7zip-full\
        imagemagick \
        vlc \
        build-essential \
        keepass2 \
        meld \
        tree \
        chromium-browser 

curl https://bootstrap.pypa.io/get-pip.py | sudo -H python3


echo "
\n
=================================\n
Bonus
=================================\n
\n"

sudo apt-get install -y \
        telegram-desktop \
        ubuntu-restricted-extras \
        gimp \
        gparted \
        shotwell

echo "
\n
=================================\n
Snaps, Dropbox...
=================================\n
\n"

# Other packages, zsh, etc...
sudo snap install spotify
sudo snap install pycharm-community --classic
sudo snap install slack --classic
sudo snap install skype --classic

cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd &


sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


echo "
\n
=================================\n
Docker deps
=================================\n
\n"

# Docker deps
sudo apt-get install -y \
    software-properties-common \
    libreadline-dev \
    libffi-dev \
    pkg-config
    
sudo apt-get autoremove -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo groupadd docker
sudo usermod -aG docker $USER
#sudo pkill -SIGHUP dockerd
#sudo echo 'DOCKER_OPTS="-dns 8.8.8.8 -dns 8.8.4.4 -g /mnt/cargo"'>> /etc/default/docker
#sudo service docker restart
docker run --rm ubuntu ls

echo "
\n
=================================\n
Log out and back in to test docker and set zsh
Then:
docker run --rm ubuntu ls
=================================\n
\n"


# If <20.04:
# sudo apt install -y \
#   gnome-tweak-tool \
#   exfat-fuse \
#   exfat-utils

