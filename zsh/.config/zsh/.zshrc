setopt AUTOCD
setopt NOBEEP
setopt NUMERIC_GLOB_SORT  # sort file10 after file9, not after file1

source "$ZDOTDIR/helpers.zsh"

source_if_exists "$ZDOTDIR/completion.zsh"
source_if_exists "$ZDOTDIR/plugins.zsh"
source_if_exists "$ZDOTDIR/history.zsh"
source_if_exists "$ZDOTDIR/keybindings.zsh"
source_if_exists "$ZDOTDIR/aliases.zsh"
# source_if_exists "$ZDOTDIR/prompt.zsh"
source_if_exists "$ZDOTDIR/prompt2.zsh"

if [[ -f ~/venv312/bin/activate ]]; then
  source ~/venv312/bin/activate
fi
