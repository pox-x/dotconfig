#! /run/current-system/sw/bin/fish

set one argv[0]

set osr /etc/os-release
set osname $(uname -s)

if test -f $osr
    set versionname $(grep '^NAME=' /etc/os-release | sed -E 's/^NAME="?(.*?)"?$/\1/')
else
    logs "$red Error$zero: files not found in this os status: $status !!!"
end

# running
if test $versionname = NixOS
    source $HOME/.config/dotconfig/bin/nix-install.fish
else
    source $PWD/.config/dotconfig/bin/install.sh
end

set -e osname one versionname
