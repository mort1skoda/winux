## winux

### windows programs using a liunx like file organization

#### Install Git and GitHub.cli for windows
#### Auth with gh
#### git config --global

* GitHub.cli for windows:
* winget install --id GitHub.cli
* Git for windows:
* winget install -e --id Git.Git
---
<pre>
Auth:
gh auth login
copy one time setup code
then goto:
</pre>
* https://github.com

---
* CRLF windows CRLF
* git config --global core.autocrlf false
* git config --global user.name "Your Name"
* git config --global user.email "yourmail@yourdomain.com"
* git config list
* cat .gitconfig:

<pre><code>This is a code block.
</code></pre>

<pre>
[user]
    name = Your Name
    email = youremail@yourdomain.com
</pre>

Check out theese win terminal emulators:
https://www.puttygen.com/windows-terminal-emulators



C:\winux>tree
Folder PATH listing for volume win10
C:.
├───bin
│   └───vim
│       └───vim90
│           ├───autoload
│           │   ├───dist
│           │   └───xml
│           ├───bitmaps
│           ├───colors
│           │   ├───lists
│           │   └───tools
│           ├───compiler
│           ├───doc
│           ├───ftplugin
│           ├───GvimExt32
│           ├───GvimExt64
│           ├───import
│           │   └───dist
│           ├───indent
│           ├───macros
│           │   ├───hanoi
│           │   ├───life
│           │   ├───maze
│           │   └───urm
│           ├───pack
│           │   └───dist
│           │       └───opt
│           │           ├───cfilter
│           │           │   └───plugin
│           │           ├───dvorak
│           │           │   ├───dvorak
│           │           │   └───plugin
│           │           ├───editexisting
│           │           │   └───plugin
│           │           ├───justify
│           │           │   └───plugin
│           │           ├───matchit
│           │           │   ├───autoload
│           │           │   ├───doc
│           │           │   └───plugin
│           │           ├───shellmenu
│           │           │   └───plugin
│           │           ├───swapmouse
│           │           │   └───plugin
│           │           └───termdebug
│           │               └───plugin
│           ├───plugin
│           ├───spell
│           ├───syntax
│           ├───tools
│           └───tutor
└───home
    └───m
        └───vimfiles
            └───colors


