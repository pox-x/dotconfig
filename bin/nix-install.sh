#! /run/current-system/sw/bin/bash

set -e

prog="fish ghostty kitty nvim tmux"

osname=$(uname -s)
echo "$osname command"
green='\e[0;32m'
zero='\e[0m'

if [[ "Linux" == $osname ]]; then
  echo "$osname \[${green} ok ${zero}\]"
  cp -r $prog $HOME/backupGit/testdot/
  echo "saved to $osname .config"
else
  echo "not os in this"
fi
