alias tmux="TERM=xterm-256color tmux"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH="$PATH:$HOME/src/redspot-utils"

alias g="git"
alias gs="git status"
alias ga="git add"
alias gk="git checkout"
alias gf="git diff"
alias gr="git reset"
alias gt="git fetch"
alias gh="git push"
alias gl="git pull"

alias t="tmux"
alias tl="tmux ls"
alias ta="tmux attach -t"

alias e="emacs"
alias eq="emacs -Q"
alias es="emacs -script"

alias vi="emacs"
alias vim="emacs"

alias lsl="ls -l"
alias lsa="ls -A1"

alias eachline="xargs -L 1 -I {line}"

function installed {
    echo "$(which $1)"
}

function color {
    echo $(tput setaf $1)$2$(tput sgr0);
}

function battery_gradient {
    if [ $1 -gt 80 ]; then
        local c=118;
    elif [ $1 -gt 64 ]; then
        local c=112;
    elif [ $1 -gt 48 ]; then
        local c=106;
    elif [ $1 -gt 32 ]; then
        local c=100;
    elif [ $1 -gt 16 ]; then
        local c=94;
    else
        local c=88;
    fi
    echo $c
}

function battery_level {
    echo "$(pmset -g ps | awk 'NR==2' | perl -pe 's/.*?(\d+)%.*/\1/')"
    
}

function battery_colored {
    color $(battery_gradient $(battery_level)) "$(battery_level)%"

}

# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
