
# set color for check
set green (set_color green)
set zero (set_color normal)
set red (set_color red)
set blue (set_color blue)
set yellow (set_color yellow)
set brown (set_color brown)
set cyan (set_color cyan)
set magenta (set_color magenta)


# define first variable
set prog fish ghostty kitty nvim tmux
set osr /etc/os-release
set osname $(uname -s)

# 🕒 Définition du timestamp pour les logs
set day "$blue $(date '+%d/%m/%y') $zero"
set time "$cyan $(date '+%T') $zero"
set home "$yellow $HOME$zero"
set pwd "$yellow $PWD $zero"
set user "$green $USER $zero"
set logtime "[$day][$time][$pwd][$user]"

set conf $home/.config
set log_file "dotconf.log"

# 📝 Fonction de log
function logs
    printf "$logtime |> %s\n" $argv | tee -a $log_file
end

# begin/end output log visualisation
function launchEnd
    set endlog "[$user] [$argv[1] $argv[2] $zero]"
    printf "|> %s <|\n" $endlog | tee -a $log_file
end


# check if os-release is in this os
if test -f $osr
    set versionname $(grep '^NAME=' /etc/os-release | sed -E 's/^NAME="?(.*?)"?$/\1/')
else
    logs "$red Error$zero: files not found in this os status: $status !!!"
end


# function that need for install all programme if 
# os founded
function installeur
    set files $argv[2]
    # check destination
    cp -r $files $HOME/.config
    logs "$green ok$zero <| saved in $conf/$files"
end

# Saved func
function saved
    for i in $prog
        if test -d $i
            if test $osname = Linux -o Darwin
                installeur $osname "$i"
            else
                logs "$red Error$zero: bad save probleme with $status"
            end
        else
            logs "$red Error$zero: bad input files not found; $i"
        end
    end
end

function listprog
    printf "$yellow|> $zero %s\n" $argv
end

# choice path saved
function pathListSaved
    printf "
choice prog, multiple choice can be selected.
exemple: kitty nvim ...
    \n"
    listprog $prog
    echo " "
    read -a pts
    set prog $pts
end

# check diff dotconf to $home/.config
function diffConf
    echo "$brown $POXCONF $zero"

    printf "%s %s " $osname $versionname
    set gloop true
    while test $gloop = true
        echo "
$yellow y$zero -> yes
$blue c$zero -> choice
$magenta d$zero -> check diff
$red q$zero -> exit
        "
        read -S mados
        if test $mados = y
            set prog fish ghostty kitty nvim tmux
            saved
        else if test $mados = c
            pathListSaved
            echo " "
            saved
        else if test $mados = d
            set difs $(diff -r $HOME/.config ./)
            for i in $difs
                logs "$i\n"
            end
        else if test $mados = q
            launchEnd $red "end exit"
            set gloop false
        else
            logs "$red Error$zero: bad input !!!!!"
        end
    end
end



diffConf

# suppres all variable
set -e prog osname green zero installeur home conf user diffConf saved mados gloop day time user logtime logs files oss listprog launchEnd
