# Path to your oh-my-zsh installation.
export ZSH="/Users/pierre/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# Pure
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# Autocomplete
#source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Syntax highlight
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# Auto-suggestions
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Change Pure symbol
PURE_PROMPT_SYMBOL="👻"

# Custom stuff
export PATH="$PATH:$HOME/sources/depot_tools"
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Go
export GOPATH=${HOME}/go
