@echo off
cd /d %~dp0


del ..\..\.vim
mklink /D  ..\..\.vim vim

del  ..\..\.tmux.conf 
mklink  ..\..\.tmux.conf  tmux.conf

del ..\..\.bashrc
mklink  ..\..\.bashrc  bashrc

del  ..\..\.vimrc 
mklink  ..\..\.vimrc  vimrc
@pause