
source ~/.local/share/omf/pkg/colorman/init.fish

# Shortcuts
# alias please='sudo'
alias cask='brew cask'
alias bye='exit'

# export NVM_DIR="$HOME/.nvm"

# pip fish completion start
function __fish_complete_pip
    set -lx COMP_WORDS (commandline -o) ""
    set -lx COMP_CWORD ( \
        math (contains -i -- (commandline -t) $COMP_WORDS)-1 \
    )
    set -lx PIP_AUTO_COMPLETE 1
    string split \  -- (eval $COMP_WORDS[1])
end
complete -fa "(__fish_complete_pip)" -c pip3
# pip fish completion end

# homebrew command-not-found
# brew command command-not-found-init > /dev/null 2>&1; and . (brew command-not-found-init)

# Base16 Shell
# if status --is-interactive
#     set BASE16_SHELL "$HOME/.config/base16-shell"
#     source "$BASE16_SHELL/profile_helper.fish"
# end

# rbenv
# status --is-interactive; and source (rbenv init -|psub)

# source ~/.iterm2_shell_integration.(basename $SHELL)
# still bugged
# source ~/.iterm2_shell_integration.fish

# bitbucket scripts
source ~/bin/bitbucket-cli/bitbucket-functions.fish
