@echo off
:: Author: Morten Håkestad <mort1skoda@gmail.com>
:: Github: https://github.com/mort1skoda/winuxin10.git
:: In this batch file I am trying to mimic my linux bash aliases.

::--- alias navigate the DOS shell ------------{{{
doskey  ..=cd ..
::doskey  cp=copy
::doskey  mv=ren
doskey  rm=del $*
doskey   sa=%HOME%\.aliases.bat
::doskey   sb=bashrc.bat
::doskey   sp=profile.bat
doskey   l=dir /a /o
doskey  la=dir /ah
::---------------------------------------------}}}

::--- alias edit with vim --------------------{{{
:: set a variable e.g: Editor=gvim
doskey   v=gvim $*
doskey ,ea=C:\Users\Monica\gVim.lnk aliases.bat
doskey ,eb=gVim bashrc.bat
doskey ,ep=gVim profile.bat
::doskey ,ev=gVim _vimrc
doskey   c=type $*
::doskey   q=quit.bat

::---------------------------------------------}}}

::--- alias git -----------{{{
doskey   gc=gitCommitTime.bat
doskey   gp=git push
doskey   gr=git remote -v
doskey   gs=git status
doskey ,egi=gvim %HOME%\.gitignore
::-------------------------}}}

::--- alias show all my aliases ----------{{{
::doskey /macros:all
doskey /macros
::----------------------------------------}}}



