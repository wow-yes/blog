sudo cp sources.list /etc/apt/sources.list

sudo apt-get clean
sudo apt-get update
sudo apt-get dist-upgrade

# install program software
# install
#sudo apt-get install i3-wm i3lock-fancy redshift-gtk feh firefox pcmanfm \
#    vim git gcc  build-essential gfortran \
#    lxappearance lxterminal gnome-disk-utility flameshot nomacs \
#    simplescreenrecorder smplayer bleachbit gparted gtkorphan i3status \
#    i3blocks blueman rofi  lxappearance
#
sudo apt-get install vim git gcc  build-essential gfortran gdb python3 \
    bash-completion python3-pip pandoc pandoc-citeproc tmux wget axel \
    exuberant-ctags tig ffmpeg tcl-dev tk-dev python3-tk graphviz

#sudo apt-get install nomacs pcmanfm

# install pip -U
pip3 config set global.index-url https://mirrors.aliyun.com/pypi/simple/
pip3 install -U pip
#https://pypi.tuna.tsinghua.edu.cn/simple
pip3 install numpy matplotlib pandas ipython scipy tk keras tensorflow pydot

sudo apt-get autoremove
sudo apt-get clean



