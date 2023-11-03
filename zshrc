FPATH="$HOME/.catzsh:$FPATH"
DOSPLASH="yes"

autoload -Uz rainbow splashart splashtxt redactsplashtxt cls gall ginit cdmsg trash untrash

export _pcolors=(001 002 003 004 005 006 007 008 009 010 011 012 013 014 015)
export _tcolors=(007 009 010 011 013 014 015)

function reload () {unfunction $1; autoload -Uz $1}

precmd () {
    if [ "$DOSPLASH" = "yes" ]
    then
        splashtxt
    else
        redactsplashtxt
    fi
}

chpwd () {cdmsg}

zshexit () {print -P "%F{007}See you space cowboy%f"}

function splashon() { DOSPLASH="yes"; clear; splashart }
function splashoff() { DOSPLASH="no"; clear; splashart }

# init stuff
splashart


# other stuff
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

alias pip=/usr/local/bin/pip3

alias woman=man
alias pydoc="python3 -m pydoc"

alias love="/Applications/love.app/Contents/MacOS/love"

alias sil="(cd /Applications/Sil/;./sil)"
alias betterspades="(cd /Applications/BetterSpades/;./client)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/Users/catroidvania/bin:$PATH"

