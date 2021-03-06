#!/bin/bash

if [[ $(uname) == 'Linux' ]]; then
    HOME_DIR='home'
elif [[ $(uname) == 'Darwin' ]]; then
    HOME_DIR='Users'
fi
SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DST_DIR="/${HOME_DIR}/$(whoami)"

mkdir -p "${DST_DIR}"

# deploy vim configuration
if [[ ! -L "${DST_DIR}/.vim" ]]; then
    ln -s "${SRC_DIR}/vim" "${DST_DIR}/.vim"
fi

if [[ ! -f "${DST_DIR}/.vimrc" ]]; then
    echo "source ${DST_DIR}/.vim/vimrc" > "${DST_DIR}/.vimrc"
fi

# deploy tmux configuration
if [[ ! -L "${DST_DIR}/.tmux" ]]; then
    ln -s "${SRC_DIR}/tmux" "${DST_DIR}/.tmux"
fi

if [[ ! -f "${DST_DIR}/.tmux.conf" ]]; then
    echo "source-file ${DST_DIR}/.tmux/tmux.conf" > "${DST_DIR}/.tmux.conf"
fi

# deploy editorconfig configuration
if [[ ! -L "${DST_DIR}/.editorconfig" ]]; then
    ln -s "${SRC_DIR}/editorconfig/editorconfig" "${DST_DIR}/.editorconfig"
fi

# deploy git configurations
if [[ ! -L "${DST_DIR}/.gitconfig" ]]; then
    ln -s "${SRC_DIR}/git/gitconfig" "${DST_DIR}/.gitconfig"
fi

if [[ ! -L "${DST_DIR}/.gitignore" ]]; then
    ln -s "${SRC_DIR}/git/gitignore" "${DST_DIR}/.gitignore"
fi

# bash profile
if [[ $(uname) == 'Darwin' ]]; then
    if [[ ! -L "${DST_DIR}/.bash_profile" ]]; then
        ln -s "${SRC_DIR}/osx/bash_profile" "${DST_DIR}/.bash_profile"
    fi
fi
