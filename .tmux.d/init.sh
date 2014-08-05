
function osx () {
    echo uname | grep -Eho "Darwin"
}

if [ -n $(osx) ]; then
    tmux set-option -gq "status-left" "[#S] #(eval pmset -g batt | grep -Eho '[^-][0-9]+%')%"
fi
