#!/bin/bash

set -o vi

echo "in: .bashrc"

export _WINUX_HOME='c/winux/home/m'
export _WINUX_VIMFILES='vimfiles'
export _WINUX_VIMRC='.vimrc'

source .aliases.sh


