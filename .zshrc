############################################################
#   Make sure to edit the zshrc in the utils dir
############################################################
#
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

emulate bash -c '. ~/.bashrc'

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
ZSH_THEME="agnoster"

# _ and - will be interchangeable for completion
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  autojump
  compleat
  dircycle
  gitfast
)

source $ZSH/oh-my-zsh.sh
source $HOME/.named_history

bindkey "^[[A" history-search-backward

bindkey "^[[B" history-search-forward

export JIM_UTILS=$(cat $HOME/.jim_utils_dir)
export PATH=$JIM_UTILS/bin:$PATH
