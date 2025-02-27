#! /run/current-system/sw/bin/fish

source $HOME/**/fonts/dotconf.fish

# define first variable
set prog fish ghostty kitty nvim tmux
set osname $(uname -s)
set user $USER
set home $HOME
set conf $home/.config

# set color for check
set green (set_color green)
set zero (set_color normal)


# function that need for install all programme if 
# os founded
function installeur
    printf "|>$green ok$zero <| %s\n" $1
    echo "$prog"
    # check destination
    cp -r $prog $home/.config
    printf "saved to %s" $conf
end

function saved
    if test $osname = Linux -o Darwin
        installeur $osname
    else
        echo "not os in this"
    end
end

function pathListSaved
    echo "choice which prog you want (fish, ...)"
    read -S pts
    set prog "$pts"
    echo "new files is $prog"
end

function diffConf
    printf "%s" $POXCONF
    set gloop true
    while test $gloop = true
        printf "
        %s os\n
        check (y, c, q)\n\
          y -> yes\n\
          c -> choice\n\
          d -> check diff\n\
          q -> exit\n
        " $osname
        read -S mados
        if test $mados = y
            echo "all saved"
            set prog fish ghostty kitty nvim tmux
            saved
        else if test $mados = c
            echo change
            pathListSaved
            saved
        else if test $mados = d
            diff -r $HOME/.config ./
        else if test $mados = q
            echo exit
            set gloop false
        else
            echo "bad input !!!!!"
        end
    end
end

diffConf

# suppres all variable
set -e prog osname green zero installeur home conf user diffConf saved mados gloop
