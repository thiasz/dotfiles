# ls
alias l='ls'
alias ll='ls -lhtr'
alias la='ls -lha'
# Better ls
# alias l='eza --icons'
# alias ll='eza -lh --icons --git'
# alias la='eza -lah --icons --git'
# alias tree='eza --tree --icons'

# Reuse ls completions for eza (avoids defining a separate completion function)
# compdef eza=ls

# Better cat
# alias cat='bat'

# =========================================================
# Core utilities
# =========================================================

alias cls='clear && printf "\033[3J"'
alias diff='diff --color=auto'
alias df='df -h'
alias grep='rg --color=auto'
# alias nl='nslookup'
alias pi='ping'
alias py='python3'
alias ro='robot'
alias roa='robot -A'

alias so311="source ~/venv311/bin/activate"
alias so312="source ~/venv312/bin/activate"
alias so313="source ~/venv313/bin/activate"
alias so314="source ~/venv314/bin/activate"
alias dea="deactivate"
# =========================================================
# Navigation
# =========================================================

# alias -- -='cd -'  # -- prevents - being parsed as a flag; cd - jumps to previous directory

# =========================================================
# Editor
# =========================================================

# alias vim='nvim'
alias n='nvim'

# =========================================================
# Git
# =========================================================

alias gadog='PAGER="less -F -X" git log --all --decorate --oneline --graph'
alias gaa='git add .'
alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch --delete'
alias gcb='git checkout -b'
alias gcm='git checkout main'
alias gco='git checkout'
alias gc!='git commit -v --amend'
alias gcn!='git commit -v --no-edit --amend'
alias gcmsg='git commit -m' 
alias gd='git diff'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gl='git pull'
alias glg='git log --stat'
alias glgp='git log --stat -p'
alias glo='git log -n 10 --pretty="- %h %Cgreen%as %C(auto)%s %d %Cblue%an"'
alias glol='git log --pretty="- %h %Cgreen%as %C(auto)%s %d %Cblue%an"'
alias glols='git log  --pretty="-%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --stat'
alias gp='git push'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbom='git rebase origin/$(git_main_branch)'
alias grs='git restore'
alias grss='git restore --staged'
alias gst='git status --untracked-files'
