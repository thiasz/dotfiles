#!/bin/bash
# Autoinstallationsscript for BREW packages
# 2025-09-28 (ma)
echo "Installation of CLIs and Applikationens with Homebrew"
# lsp
brew install lua-language-server
brew install pyright
brew install robot-framework
brew install vscode-langservers-extracted
# linter
brew install pylint
brew install ruff
brew install flake8
# formatter
# brew install black
# brew install isort
# brew install prettier
# brew install stylua
# others
brew install fzf
brew install git
brew install luarocks
brew install neovim
brew install openjdk
brew install plantuml
# brew install poetry
brew install ripgrep
brew install tree-sitter
brew install tree-sitter-cli
brew install virtualenv
brew install --cask alfred
brew install --cask drawio
# brew install --cask font-caskaydia-cove-nerd-font
brew install --cask font-hack-nerd-font
brew install --cask font-meslo-lg-nerd-font
brew install --cask wezterm
brew install --cask shottr
exit 0
