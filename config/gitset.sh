#!/bin/bash
git config --global init.defaultBranch main         ;
git config --global color.ui true                   ;
git config --global core.quotepath false            ;
git config --global gui.encoding utf-8              ;
git config --global i18n.commit.encoding utf-8      ;
git config --global i18n.logoutputencoding utf-8    ;
git config --global core.filemode false             ;
git config --global diff.tool vimdiff               ;
git config --global difftool.prompt false           ;
git config --global http.sslVerify false            ;
git config --global http.postBuffer 1048576000      ;
git config --global user.email \"lipengbo@msn.com\" ;
git config --global user.name  \"lipengbo\"         ;
git config --global core.hooksPath ./githooks      ;
git config --global core.editor vim                 ;
