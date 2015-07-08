
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function osx () {
    echo uname | grep -Eho "Darwin"
}

#
# OSX specific
#
if [ -n $(osx) ]; then
    alias emacs="/usr/local/Cellar/emacs/HEAD/bin/emacs"
fi

# Trigger ~/.bashrc commands
. ~/.bashrc

eval "$(pyenv init -)"

##
# Your previous /Users/jordon/.bash_profile file was backed up as /Users/jordon/.bash_profile.macports-saved_2014-08-15_at_15:25:58
##

# MacPorts Installer addition on 2014-08-15_at_15:25:58: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/jordon/.bash_profile file was backed up as /Users/jordon/.bash_profile.macports-saved_2014-11-11_at_16:34:58
##

# MacPorts Installer addition on 2014-11-11_at_16:34:58: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

