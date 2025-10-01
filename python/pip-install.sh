#!/bin/zsh
# Autoinstallationsscript
# Gebaut fuer MacOS
# v.03 25.07.19 (ds)
#
# Installation und Upgrade von pip fuer Python als User
if [[ ! $(which pip3) ]];then
  curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
  python get-pip.py --user
  pip3 install --upgrade pip
fi
# exit 0
