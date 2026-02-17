#!/bin/bash
#rm -rf ~/.tmux/plugins/tpm;
#git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

rm -rf ~/.vimrc;
#ln -sf /c/msys64/home/lex.li/Github/blog/config/vimrc  /c/msys64/home/lex.li/.vimrc 
cmd /c mklink "%HOME%\.vimrc" "C:\msys64\home\lex.li\Github\blog\config\vimrc"
