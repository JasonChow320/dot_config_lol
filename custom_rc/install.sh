#!/bin/bash -i

source ~/.bashrc

cat ${CUSTOMRC_DIR}/custom_rc/custom_bashrc >> ${HOME}/.bashrc
echo "source ${CUSTOMRC_DIR}/custom_rc/custom_rc" >> ${HOME}/.bashrc

source ~/.bashrc
