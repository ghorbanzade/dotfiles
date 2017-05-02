#!/bin/bash

SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DST_DIR="/home/`whoami`"

mkdir -p ${DST_DIR}

ln -s ${SRC_DIR}/vim ${DST_DIR}/.vim
echo "source ${DST_DIR}/.vim/vimrc" > ${DST_DIR}/.vimrc

ln -s ${SRC_DIR}/tmux ${DST_DIR}/.tmux
echo "source-file ${DST_DIR}/.tmux/tmux.conf" > ${DST_DIR}/.tmux.conf
