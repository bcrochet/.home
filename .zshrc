# Set the path to Oh My Zsh.
export OMZ="$HOME/.oh-my-zsh"

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':omz:editor' keymap 'vi'

# Auto convert .... to ../..
zstyle ':omz:editor' dot-expansion 'no'

# Set case-sensitivity for completion, history lookup, etc.
zstyle ':omz:*:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':omz:*:*' color 'yes'

# Auto set the tab and window titles.
zstyle ':omz:module:terminal' auto-title 'yes'

# Set the Zsh modules to load (man zshmodules).
# zstyle ':omz:load' zmodule 'attr' 'stat'

# Set the Zsh functions to load (man zshcontrib).
# zstyle ':omz:load' zfunction 'zargs' 'zmv'

# Add local theme directory. This must come before the module load
export DOT_HOME=$HOME/.home
fpath=($DOT_HOME/themes $fpath)

# Set the Oh My Zsh modules to load (browse modules).
zstyle ':omz:load' omodule 'environment' 'terminal' 'editor' 'completion' \
  'history' 'directory' 'spectrum' 'alias' 'utility' 'git' 'prompt'

# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':omz:module:prompt' theme 'bcrochet'

# This will make you shout: OH MY ZSHELL!
source "$OMZ/init.zsh"

# Customize to your needs...
export PATH=$PATH:$DOT_HOME/bin

if [ -d "$HOME/bin" ]; then
	export PATH=$PATH:$HOME/bin
fi

# aliases
source $DOT_HOME/.aliases

# set environment variables ...
source $DOT_HOME/.environment_variables

# add a local .local.zshrc file, if it exists
if [ -f "$HOME/.local.zshrc" ]; then
	source $HOME/.local.zshrc
fi

export EDITOR=`which vim`

if [ -d "$HOME/.rvm/bin" ]; then
	PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
	source $HOME/.rvm/scripts/rvm
fi

