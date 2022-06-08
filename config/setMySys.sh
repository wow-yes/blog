#sudo cp sources.list /etc/apt/sources.list
sudo sed -i 's/archive.ubuntu/mirrors.aliyun/'  /etc/apt/sources.list

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
    upower pciutils sshfs tig  universal-ctags unzip
#neofetch 

sudo apt-get install tcl-dev tk-dev

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle

sudo apt-get autoremove
sudo apt-get clean

pip3 config set global.index-url https://mirrors.aliyun.com/pypi/simple/
pip3 install -U pip
pip3 install -U numpy matplotlib pandas ipython scipy tk cartopy
pip3 install -U keras tensorflow pydot sklearn pyforest geopandas

git config --global color.ui true
git config --global core.quotepath false
git config --global core.quotepath false # 显示 status 编码
git config --global gui.encoding utf-8 # 图形界面编码
git config --global i18n.commit.encoding utf-8 # 提交说明编码
git config --global i18n.logoutputencoding utf-8
git config --global core.filemode false
git config --global diff.tool vimdiff
git config --global difftool.prompt false
git config --global user.email "lipengbo@msn.com"
git config --global user.name  "lipengbo"
git config --global core.editor vim

pwd=`cd $(dirname $0);pwd -P`

rm -rf ~/.vimrc
ln -s $(pwd)/_vimrc ~/.vimrc
rm -rf ~/.gtags.conf
ln -fs $(pwd)/gtags.conf  ~/.gtags.conf
rm -rf ~/.bashrc
ln -sf $(pwd)/bashrc ~/.bashrc
rm -rf ~/.Xresources
ln -sf $(pwd)/Xresources ~/.Xresources

rm -rf ~/.desk.png
ln -sf $(pwd)/desk.png ~/.desk.png
rm -rf ~/.lock.png
ln -sf $(pwd)/lock.png ~/.lock.png

rm -rf ~/.i3*
mkdir ~/.i3/
ln -sf $(pwd)/config ~/.i3/config
ln -sf $(pwd)/ctags.conf ~/.ctags

rm -rf ~/.cache
ln -sf /dev/shm/ ~/.cache
rm -rf ~/.adobe
ln -sf /dev/shm/ ~/.adobe

rm -rf ~/.snippets
ln -sf $(pwd)/snippets ~/.snippets

rm -rf ~/.tmux.conf
ln -sf $(pwd)/tmux.conf ~/.tmux.conf

