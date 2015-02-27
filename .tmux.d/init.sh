source ~/.bashrc

function osx () {
    echo uname | grep -Eho "Darwin"
}

if [ $(installed reattach-to-user-namespace) ]; then
    tmux set-option -gq default-command "reattach-to-user-namespace -l bash"
fi

#
# OSX specific
#
if [ -n $(osx) ]; then
    tmux set-option -gq "status-left" "[#S] #(eval pmset -g batt | grep -Eho '[^-][0-9]+%')%"
fi
