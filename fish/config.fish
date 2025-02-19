if status is-interactive
    # Commands to run in interactive sessions can go here

    export EDITOR='/run/current-system/sw/bin/nvim'
    alias nf='nvim $(fzf --preview="bat --color=always {}")'
    alias see='bash ~/Rander/ChangeDisplaymouse.sh'
    alias o='exa -la --header --group --long --icons'
    # alias o='ls -la'
    alias vo='/run/current-system/sw/bin/nvim'
    alias tm='tmux attach-session'
    export VROM="$HOME/Lab/personal/title_vrom/vrom.py"
    python3 $VROM
    # neofetch
    # alias ty='tty-cock -cs -C7'
    alias g=git

    # export PATH='/home/erro/.yarn/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/pox/.cargo/bin'

    export PATH='/run/wrappers/bin:/home/pox/.nix-profile/bin:/nix/profile/bin:/home/pox/.local/state/nix/profile/bin:/etc/profiles/per-user/pox/bin:/nix/var/nix/profiles/default/bin:/run/current-system/sw/bin:/home/pox/.cargo/bin'
    alias kit='kitten icat'
    # alias em=/usr/bin/emacs
    # alias doo='/home/pox/.config/emacs/bin/doom'

    export LESS_THERMCAP_mb='\e[1;32m'
    export LESS_THERMCAP_md='\e[1;32m'
    export LESS_THERMCAP_me='\e[0m'
    export LESS_THERMCAP_se='\e[0m'
    export LESS_THERMCAP_so='\e[1;32m'
    export LESS_THERMCAP_ue='\e[0m'
    export LESS_THERMCAP_us='\e[1;4;31m'

    # set VIRTUAL_ENV "/home/pox/Lab/personal/Universe/Vision-00/infra/clie/vision/bin/activate.fish"

    # Created by `pipx` on 2024-01-19 08:33:08
    # set PATH $PATH /home/pox/local/bin
    # source ~/.asdf/asdf.fish
    # eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    # export MANPATH="/home/linuxbrew/.linuxbrew/opt/erlang/lib/erlang/man:$MANPATH"
    alias kit=kitten icat
    export LIBRARY_PATH="$LIBRARY_PATH:/home/pox/mytensor"
    export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/pox/mytensor"
    export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:."
    export EDITOR=vi
    # source "$HOME/.cargo/env.fish"
    # export DOTNET="/home/pox/.dotnet"
    # export PATH='/usr/local/gleam/bin:/usr/local/gleam/bin:/home/pox/.asdf/shims:/home/pox/.asdf/bin:/home/erro/.yarn/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/pox/.cargo/bin:/home/pox/.local/bin'
    #  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    export PATH="$PATH:/home/pox/bin"
    eval "$(zoxide init fish)"
    # nix-env -iA nixpkgs.any-nix-shell
    any-nix-shell fish --info-right | source

    export BG="$HOME/Pictures/homechihiro.jpg"
    # set agent-ssh launch at each fish 
    set -Ux SSH_AUTH_SOCK (ssh-agent -c | grep -oE '/tmp/ssh-[^;]+' | head -n1)
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/pox/.lmstudio/bin
