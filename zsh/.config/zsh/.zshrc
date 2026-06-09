source "$ZDOTDIR/helpers.zsh"

source_if_exists "$ZDOTDIR/completion.zsh"
source_if_exists "$ZDOTDIR/plugins.zsh"
source_if_exists "$ZDOTDIR/history.zsh"
source_if_exists "$ZDOTDIR/keybindings.zsh"
source_if_exists "$ZDOTDIR/aliases.zsh"
source_if_exists "$ZDOTDIR/prompt.zsh"

setopt AUTOCD
setopt NOBEEP
setopt NUMERIC_GLOB_SORT  # sort file10 after file9, not after file1
