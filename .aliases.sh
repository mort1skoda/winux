#!/bin/bash

echo "in: .aliases.sh"

alias l='ls -la --color --group-directories-first'
alias v='gvim'

alias g0s='git pull'
alias g1s='git status && git remote -v'
alias g2a='git add '
alias g3s='git status'

DATE=$(DATE +"%Y-%m-%d %H:%M:%S")
echo $DATE
alias g4c='git commit -m "$DATE" '

alias g5s='g1s'



alias q='exit'







echo "alias:"
alias

