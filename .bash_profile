# If you installed the SDK via Homebrew, otherwise ~/Library/Android/sdk
export ANDROID_HOME=/usr/local/opt/android-sdk

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh"  ] && . "$NVM_DIR/nvm.sh" # This loads nvm

source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

#   Change Prompt
#   ------------------------------------------------------------
export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => "
export PS2="| => "

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
export CLICOLOR=1

export LSCOLORS=BxFxCxDxBxegedabagaced

export GRADLE_HOME=/Development/gradle-2.12
export PATH=${PATH}:$GRADLE_HOME/bin

#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ls;  }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='subl'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
alias andrev='adb reverse tcp:8081 tcp:8081' # android:     command needed to use your android device 
alias nvmu='nvm use 5.3.0'                  # nvmu:          use correct version of node
alias andev='adb reverse tcp:8081 tcp:8081 && adb shell input keyevent 82'   # andev:         opens up dev option on android device
alias andls='lsof -n -i4TCP:8081'           # andls:        lists processes running on port 8081 
alias andlog='adb logcat *:S ReactNative:V ReactNativeJS:V'           # andlog:     logs all console.logs into the terminal
alias ilog='react-native log-ios' #logs ios into terminal
alias rns='react-native start'           # rns:     react-native start 
alias rna='react-native run-android'           # rns:     react-native run-android
alias rni='react-native run-ios'           # rns:     react-native run-ios

# ssh into cloud66 server
alias c6prod='cx ssh -s prod w'           # prod server
alias c6stag='cx ssh -s initial s'           # prod server



alias gits='git status'                     # gits:          git status 
alias gad='git add .'                       # gad:           git add . 
alias glog='git log --oneline'              # glog:           git log --oneline
alias gdif='git diff'                       # gdif:           git diff 
alias gundo='git reset --soft HEAD~'        # gundo:          undo last commit

mcd () { mkdir -p "$1" && cd "$1";  }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ;  }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null;  }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop

# If you installed the SDK via Homebrew, otherwise ~ / Library / Android / sdk
#export ANDROID_HOME=~/Library/Android/sdk

export ANDROID_HOME=/Users/razajafri/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
#export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
source ~/.nvm/nvm.sh

export DEVELOPER_DIR="/Applications/Xcode.app/Contents/Developer/"
