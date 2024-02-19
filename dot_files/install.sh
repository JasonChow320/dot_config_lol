#!/bin/bash -x

# assume everything in this directory can be copied to ${HOME}

function create_symlink()
{
    if [ -d $1 ];
    then
        ln -rs $1/* $2
    else
        ln -s $1 $2
    fi
}

DOT_PATTERN="dot_"
CUR_DIR="${CUSTOMRC_DIR}/dot_files/"
for file in *;
do
    if [[ ${file} == *"${DOT_PATTERN}"* ]];
    then
        #cp -r ${file} ${HOME}/.${file/$DOT_PATTERN/}
        create_symlink ${CUR_DIR}/${file} ${HOME}/.${file/$DOT_PATTERN/}
    fi
done

# update TreeSitter and run PackerSync in neovim
nvim --headless +PackerSync +TSUpdate +q
