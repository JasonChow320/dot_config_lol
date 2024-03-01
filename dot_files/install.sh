#!/bin/bash

# regular colors
Red='\033[0;31m'    # Red
Green='\033[0;32m'  # Green
Yellow='\033[0;33m' # Yellow
NC='\033[0m'        # No Color

# assume everything in this directory can be copied to ${HOME}
DOT_PATTERN="dot_"
CUR_DIR="${CUSTOMRC_DIR}/dot_files/"
DOT_FILES=(
    "dot_config/nvim"
    "dot_tmux.conf"
    "dot_vimrc"
    "dot_clang-format"
    "dot_gitignore"
    "dot_profile"
    "dot_zshrc"
)

for dot_file in "${DOT_FILES[@]}"
do
    if [ ! -e ${CUR_DIR}$dot_file ];
    then
        echo -e "${Red}Dot file ${dot_file} not found in ${CUR_DIR}.${NC}"
    else
        user_file="${HOME}/.${dot_file/$DOT_PATTERN/}"
        rm -rf user_file
        ln -sf ${CUR_DIR}/$dot_file ${user_file}
    fi
done

for file in *;
do
    if [[ ${file} == *"${DOT_PATTERN}"* ]] && [[ ! ${DOT_FILES[@]} =~ $file ]];
    then
        echo -e "${Red}${file} is not defined in DOT_FILES.${NC}"
    fi
done

# update TreeSitter and run PackerSync in neovim
nvim --headless +PackerSync +TSUpdate +q
