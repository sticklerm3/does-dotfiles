export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

export GEM_HOME="/usr/local"

# added for tmux
export TERM="xterm-256color"

# brew environment
eval $(brew shellenv)

eval "$(rbenv init -)"

### Completion Stuff ####
# brew install bash-completion@2
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# iterm2 integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

source ~/.aliases

# liquid prompt
if [ -f /usr/local/share/liquidprompt ]; then
	 . /usr/local/share/liquidprompt
fi

# better 'cd'
. /usr/local/etc/profile.d/z.sh

# Git shortcuts
alias gs="git status"
alias gb="git branch -v"
gitCheckoutAndUpdateSubmodules() {
    # Check out a specific branch , pull recursively if master
    git checkout ${1}
    if [ ${1} == "master" ]; then
        git pull --recurse-submodules
    fi
    git submodule update
}
alias gco=gitCheckoutAndUpdateSubmodules

# added by travis gem
[ -f /Users/Matthew/.travis/travis.sh ] && source /Users/Matthew/.travis/travis.sh
