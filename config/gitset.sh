#!/bin/bash
git config init.defaultBranch main         ;
git config color.ui true                   ;
git config core.quotepath false            ;
git config gui.encoding utf-8              ;
git config i18n.commit.encoding utf-8      ;
git config i18n.logoutputencoding utf-8    ;
git config core.filemode false             ;
git config diff.tool vimdiff               ;
git config difftool.prompt false           ;
git config http.sslVerify false            ;
git config http.postBuffer 1048576000      ;
git config user.email \"lipengbo@msn.com\" ;
git config user.name  \"lipengbo\"         ;
git config core.hooksPath ./githooks      ;
git config core.editor vim                 ;
