#sudo cp sources.list /etc/apt/sources.list

sudo apt-get clean
sudo apt-get update
sudo apt-get dist-upgrade

# install program software
# install
#sudo apt-get install i3-wm i3lock-fancy redshift-gtk feh firefox pcmanfm \
#    vim git gcc  build-essential gfortran \
#    lxappearance lxterminal gnome-disk-utility flameshot nomacs \
#    simplescreenrecorder smplayer bleachbit gparted gtkorphan i3status \
#    i3blocks blueman rofi  lxappearance nomacs pcmanfm

sudo apt-get install vim git gcc build-essential gfortran gdb python3 \
    bash-completion python3-pip pandoc pandoc-citeproc tmux wget axel \
    exuberant-ctags tig graphviz rsync \
    htop libgeos++-dev proj-bin  libproj-dev libgeos.dev

#sudo apt-get install tcl-dev tk-dev

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle


# install pip -U
pip3 config set global.index-url https://mirrors.aliyun.com/pypi/simple/
pip3 install -U pip
#https://pypi.tuna.tsinghua.edu.cn/simple
pip3 install -U numpy matplotlib pandas ipython scipy tk cartopy
#pip3 install -U keras tensorflow pydot sklearn pyforest

sudo apt-get autoremove
sudo apt-get clean

ssh-keygen -C "lipengbo@msn.com"


