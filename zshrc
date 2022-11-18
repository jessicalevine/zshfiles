# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_IGNORE_SPACE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx)

source $ZSH/oh-my-zsh.sh

# IMPORTED FROM BASH
source ~/.shell_aliases
export EDITOR=vim

export PYTHONPATH=$(brew --prefix)/lib/python3.6/site-packages
export PATH="$HOME/Library/Python/3.6/bin:$PATH"

# END OF BASH IMPORT

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/X11/bin
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/sbin:/usr/local/bin:$PATH
export PATH=~/bin:$PATH
unsetopt correct

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

# OPAM configuration
. ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# golang configuration
export GOPATH="/Users/jessica/dev/go"
alias gosrc="cd $GOPATH/src/github.com"
export PATH=$PATH:$GOPATH/bin

export LESS=-RI

export NVM_DIR="/Users/jessica/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias ag='ag --ignore-dir node_modules'

export PATH="/usr/local/Cellar/qt5/5.11.1/bin:$PATH"
alias mv='mv -v'

function findcat(){
  find . -iname "*$1*" -exec cat -- "{}" \;
}

function findfile(){
  find . -iname "*$1*";
}

function findopen(){
  find . -iname "*$1*" -exec open -- "{}" \;
}

function findopenhtml(){
  find . -iname "*$1*.html" -exec open -- "{}" \;
}

alias python=/usr/local/bin/python3
export PATH="/usr/local/opt/python@3.8/libexec/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
source ~/.rbenvinit

export PATH="/Users/jessica/.nvm/versions/node/v6.10.2/lib/node_modules/node/bin:$PATH"
export PATH="/Users/jessica/Library/Application Support/itch/broth/butler/versions/15.21.0:$PATH"
export PATH="/Users/jessica/dev/tweego-2.1.1-macos-x64:$PATH"
alias ctags="`brew --prefix`/bin/ctags"

source ~/.cohostrc

# pnpm
export PNPM_HOME="/Users/jessica/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# agnoster prompts
customize_agnoster() {
  prompt_segment '37' 'black' '%t '
}
PROMPT_SEGMENT_POSITION=3 PROMPT_SEGMENT_NAME="customize_agnoster";\
AGNOSTER_PROMPT_SEGMENTS=("${AGNOSTER_PROMPT_SEGMENTS[@]:0:$PROMPT_SEGMENT_POSITION-1}" "$PROMPT_SEGMENT_NAME" "${AGNOSTER_PROMPT_SEGMENTS[@]:$PROMPT_SEGMENT_POSITION-1}");\
unset PROMPT_SEGMENT_POSITION PROMPT_SEGMENT_NAME
