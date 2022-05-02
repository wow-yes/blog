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

