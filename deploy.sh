#!/bin/bash

SRC_DIR="~/my/dot-files"
DST_DIR="test"

mkdir -p ${DST_DIR}

ln -s ${SRC_DIR}/vim ${DST_DIR}/.vim
echo "source ${DST_DIR}/.vim/vimrc" > ${DST_DIR}/.vimrc

ln -s ${SRC_DIR}/tmux ${DST_DIR}/.tmux
echo "source-file ${DST_DIR}/.tmux/tmux.conf" > ${DST_DIR}/.tmux.conf
