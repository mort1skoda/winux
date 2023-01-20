#!/bin/bash

echo "in: .aliases.sh"


#### aliases for bash ##################################{{{
alias l='ls -la --color --group-directories-first'
alias v='gvim'
alias sa='source .aliases.sh'
alias sb='source .bashrc'
alias sp='source .bash_profile'
alias ,ea='gvim .aliases.sh &'

alias g='grep -i --color '
alias ag='alias | grep -i --color '


alias q='exit'
#####################################################}}}


#### aliases for git ##############################{{{
alias g0s='git pull'
alias g1s='git status && git remote -v'
alias g2a='git add '
alias g3s='git status'

DATE=$(DATE +"%Y-%m-%d %H:%M:%S")
echo "DateString \$DATE for git commit -m:" $DATE
echo $DATE
alias g4c='git commit -m "$DATE" '

alias g5s='g1s'
alias g6p='git push'

alias ,gi='gvim .gitignore &'


#######################################}}}


echo "alias:"
alias


