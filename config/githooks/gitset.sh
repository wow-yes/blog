#!/bin/bash

# 脚本名称: git-setup.sh
# 功能: 无参数时设置git全局配置，有参数时复制gitignore到指定目录

# 获取脚本所在目录
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# 检查是否有参数
if [ $# -eq 0 ]; then
    echo "没有检测到参数，执行git全局配置..."
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
    git config --global core.editor vim                 ;
    git config --global pull.rebase true;  
    git config --global core.hooksPath  $SCRIPT_DIR;

    # 显示配置结果
    echo "Git global config done"
    git config --global --list
    
    exit 0
else
    # 有参数的情况
    TARGET_DIR="$1"
    
    # 检查目标目录是否存在
    if [ ! -d "$TARGET_DIR" ]; then
        echo "错误：目标目录 '$TARGET_DIR' 不存在"
        exit 1
    fi
    
    # 复制gitignore到目标目录
    echo "Copy Doxyfile     to '$TARGET_DIR'"; cp  "$SCRIPT_DIR/Doxyfile"     "$TARGET_DIR/Doxyfile"
    echo "Copy Makefile     to '$TARGET_DIR'"; cp  "$SCRIPT_DIR/Makefile"     "$TARGET_DIR/Makefile"
    echo "Copy clangformat  to '$TARGET_DIR'"; cp  "$SCRIPT_DIR/clangformat"  "$TARGET_DIR/.clangformat"
    echo "Copy editorconfig to '$TARGET_DIR'"; cp  "$SCRIPT_DIR/editorconfig" "$TARGET_DIR/.editorconfig"
    echo "Copy gitignore    to '$TARGET_DIR'"; cp  "$SCRIPT_DIR/gitignore"    "$TARGET_DIR/.gitignore"
    echo "Copy gitproxy.sh  to '$TARGET_DIR'"; cp  "$SCRIPT_DIR/gitproxy.sh"  "$TARGET_DIR/gitproxy.sh"
    
    echo "Copy commit-msg   to '$TARGET_DIR'"; cp  "$SCRIPT_DIR/commit-msg"   "$TARGET_DIR/.git/hooks/commit-msg"
    echo "Copy pre-commit   to '$TARGET_DIR'"; cp  "$SCRIPT_DIR/pre-commit"   "$TARGET_DIR/.git/hooks/pre-commit"
fi
