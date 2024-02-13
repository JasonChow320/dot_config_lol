#!/bin/bash -i

cat custom_bashrc >> ${HOME}/.bashrc
echo "source $(pwd)/custom_rc" >> ${HOME}/.bashrc

source ~/.bashrc
