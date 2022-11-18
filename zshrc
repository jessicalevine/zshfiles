# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx)

export PYTHONPATH=$(brew --prefix)/lib/python3.6/site-packages
export PATH="$HOME/Library/Python/3.6/bin:$PATH"

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/X11/bin
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/sbin:/usr/local/bin:$PATH
export PATH=~/bin:$PATH

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

# OPAM configuration
. ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# golang configuration
export GOPATH="/Users/jessica/dev/go"
alias gosrc="cd $GOPATH/src/github.com"
export PATH=$PATH:$GOPATH/bin

export NVM_DIR="/Users/jessica/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


export PATH="/usr/local/Cellar/qt5/5.11.1/bin:$PATH"

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

source ~/.zshrc_agnostic
