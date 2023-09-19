FPATH="$HOME/.catzsh:$FPATH"

autoload -Uz rainbow splashart splashtxt cls gall cdmsg

function reload () {unfunction $1; autoload -Uz $1}

precmd () {splashtxt}

chpwd () {cdmsg}

zshexit () {print -P "%F{007}See you space cowboy%f"}


# init stuff
splashart


# other stuff
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

alias pip=/usr/local/bin/pip3

alias woman=man

alias love="/Applications/love.app/Contents/MacOS/love"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
