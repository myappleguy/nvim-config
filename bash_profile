[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH=/usr/local/bin:$PATH
export EDITOR=nvim

source ~/code/nvim-config/git_completion.bash
source ~/code/nvim-config/git_prompt
source ~/code/nvim-config/aliases.bash

set -o vi
