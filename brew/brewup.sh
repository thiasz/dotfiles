#!/bin/bash
# Auto Upgrade Script für brew --cask
#
brew update
brew upgrade -g
brew cleanup
exit 0
