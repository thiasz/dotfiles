#!/bin/bash
# Autoinstallationsscript fuer TeamDDIN
# Gebaut fuer MacOS
# v.03 25.07.19 (ds)
#
echo "Installation von Homebrew"
#
# Pruefen ob Homebrew installiert ist, wenn nicht installieren
if [[ ! $(which brew) ]];then
  echo "Kein Homebrew gefunden, installiere Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
#
# Alles auf den aktuellen Stand bringen, vorhandene CLIs/apps aktualisieren und Cask fuer GUI Apps installieren
brew update
brew upgrade

exit 0
