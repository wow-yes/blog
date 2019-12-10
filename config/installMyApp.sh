
#sudo echo "deb http://mirrors.163.com/ubuntu/ bionic main restricted universe multiverse"> /etc/apt/sources.list
#sudo echo "deb http://mirrors.163.com/ubuntu/ bionic-security main restricted universe multiverse">> /etc/apt/sources.list
#sudo echo "deb http://mirrors.163.com/ubuntu/ bionic-updates main restricted universe multiverse" >> /etc/apt/sources.list
#sudo echo "deb http://mirrors.163.com/ubuntu/ bionic-proposed main restricted universe multiverse">> /etc/apt/sources.list
#sudo echo "deb http://mirrors.163.com/ubuntu/ bionic-backports main restricted universe multiverse" >> /etc/apt/sources.list

#sudo apt-get clean
#sudo apt-get dist-upgrade 

# install program software
# install 
sudo apt-get install i3-wm i3lock-fancy redshift-gtk feh firefox pcmanfm \ 
    vim git gcc  build-essential gfortran \
    lxappearance lxterminal gnome-disk-utility flameshot nomacs \
    simplescreenrecorder smplayer bleachbit gparted gtkorphan i3status \
    i3blocks blueman rofi  lxappearance

sudo apt-get autoremove
#
#git clone 

