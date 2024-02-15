#!/bin/bash

# assume everything in this directory can be copied to ${HOME}

DOT_PATTERN="dot_"
for file in *;
do
    if [[ ${file} == *"${DOT_PATTERN}"* ]];
    then
        cp -r ${file} ${HOME}/.${file/$DOT_PATTERN/}
    fi
done

# update TreeSitter and run PackerSync in neovim
nvim --headless +PackerSync +TSUpdate +q
