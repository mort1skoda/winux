@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Author: Morten Håkestad <mort1skoda@gmail.com>
:: Github: https://github.com/mort1skoda/winuxin10.git
::
:: .aliases.bat try to make cmd mimic bash.
:: Make my shell work under Windows and Linux the same.
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::


::--- alias make cmd mimic bash ---------------{{{
doskey  ..=cd ..
::doskey  cp=copy
::doskey  mv=ren
doskey  rm=del $*
doskey   sa=%HOME%\.aliases.bat
::doskey   sb=bashrc.bat
::doskey   sp=profile.bat
doskey   l=dir /a /o
::doskey  la=dir /ah
::--------------------------------------}}}


::--- alias edit with vim --------------------{{{
:: set a variable e.g: Editor=gvim
doskey   v=gvim $*
doskey ,ea=gvim %WINUX_HOME%\.aliases.bat
::doskey ,eb=gVim bashrc.bat
::doskey ,ep=gVim profile.bat
::doskey ,ev=gVim _vimrc
doskey   c=type $*
doskey   q=exit
::--------------------------------------}}}


::--- alias git ------------------------------{{{
doskey   gc=gitCommitTime.bat
doskey   gp=git push
doskey   gr=git remote -v
doskey   gs=git status
doskey ,egi=gvim %HOME%\.gitignore

:: git step by step:
doskey g0 = git pull
doskey g1s = git status
doskey g2 = git remote -v
doskey g3 = git add $*
doskey g4 = git status
doskey g5 = gitCommitTime.bat
doskey g6 = git push
::--------------------------------------}}}


::--- alias list -----------------------------{{{
doskey /macros
::--------------------------------------}}}



