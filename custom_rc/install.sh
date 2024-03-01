#!/bin/bash -i

source ~/.bashrc

cat ${CUSTOMRC_DIR}/custom_rc/custom_bashrc >> ${HOME}/.bashrc
echo "source ${CUSTOMRC_DIR}/custom_rc/custom_rc" >> ${HOME}/.bashrc

cat ${CUSTOMRC_DIR}/custom_rc/custom_bashrc >> ${ZDOTDIR}/.zshrc
echo "source ${CUSTOMRC_DIR}/custom_rc/custom_rc" >> ${ZDOTDIR}/.zshrc

source ~/.bashrc
source ${ZDOTDIR}/.zshrc
