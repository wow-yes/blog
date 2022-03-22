#sudo cp sources.list /etc/apt/sources.list

sudo apt-get clean
sudo apt-get update
sudo apt-get dist-upgrade

# install program software
# install
#sudo apt-get install i3-wm i3lock-fancy redshift-gtk  firefox pcmanfm \
#    lxappearance lxterminal gnome-disk-utility flameshot nomacs \
#    simplescreenrecorder smplayer bleachbit gparted gtkorphan i3status \
#    i3blocks blueman rofi  lxappearance nomacs pcmanfm

sudo apt-get install vim git gcc build-essential gfortran gdb python3 \
    bash-completion python3-pip pandoc pandoc-citeproc tmux wget axel \
     tig graphviz rsync doxygen libgsl-dev libblas-dev liblapack-dev \
    htop libgeos++-dev proj-bin  libproj-dev libgeos.dev global \
    neofetch upower pciutils sshfs tig 

#sudo apt-get install tcl-dev tk-dev

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle

#sudo apt-get autoremove
#sudo apt-get clean

#ssh-keygen -C "lipengbo@msn.com"


