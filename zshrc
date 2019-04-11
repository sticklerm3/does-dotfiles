# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:usr/local/sbin$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PYTHONPATH="$(brew --prefix)/lib/python2.7/site-packages"
export PATH="$PATH:$(brew --prefix)/share/python"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# zsh brew completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# oh-my-zsh installed plugins stuff
if (( ! ${fpath[(I)/usr/local/share/zsh/site-functions]} )); then
  FPATH=/usr/local/share/zsh/site-functions:$FPATH
fi

# brew installed zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Load the Functions file
if [ -e ~/.zfunctions.zsh ]; then
     source ~/.zfunctions.zsh
fi

# Load the aliases file
if [ -e ~/.aliases ]; then
     source ~/.aliases
fi

# Load zsh-aliases file
if [ -e ~/.aliases.zsh ]; then
     source ~/.aliases.zsh
fi

# Load the exports file
if [ -e ~/.exports ]; then
     source ~/.exports
fi

# Loads device specific stuff set by user
if [[ -f "$HOME/.shell_env_local" ]]; then
      source "$HOME/.shell_env_local"
fi

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# added for tmux
export TERM="xterm-256color"

# rcm config
export RCRC="$HOME/.rcrc"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X';

PIPENV_VENV_IN_PROJECT=1

# zpython- zsh python interpreter
module_path=($module_path /usr/local/lib/zpython)

# fish like syntax highlights, autosuggestions, and hist search
# NOTE: zsh-syntax-highlighting MUST sourced BEFORE zsh-history-substring-search
source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh"
source "$(brew --prefix)/opt/git-extras/share/git-extras/git-extras-completion.zsh"

# History
HISTFILE=$HOME/.zhist
SAVEHIST=1000
HISTSIZE=1000

setopt hist_expire_dups_first
# setopt hist_ignore_dups

setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share histor

setopt auto_cd # cd by typing directory name if it's not a command

setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match

zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  alehouse
  battery
  base16
  bitbucket-git-helpers
  colored-man-pages
  dash
  gem
  git
  github
  git-extras
  iterm2
  noreallyjustfuckingstopalready
  systemadmin
  tumult
  zsh-better-npm-completion
)

# Loads OMZ
source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Rbenv
export RBENV_ROOT="${HOME}/.rbenv"
if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi

# wtf
eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
eval $(thefuck --alias FUCK)

# node env
# eval "$(ndenv init -)"

# Homebrew env
eval "$(brew shellenv)"

# Homebrew Command-not-found
if brew command command-not-found-init > /dev/null; then
  eval "$(brew command-not-found-init)";
fi

# iterm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# comp cache
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# comp highlight/selector
zmodload -i zsh/complist

# loads VCS info
autoload -Uz vcs_info

# colorls tab completion
source "$(dirname $(gem which colorls))/tab_complete.sh"

# bitbucket shell scripts
# source ~/bin/bitbucket-cli/bitbucket-functions.sh

# GRV-grv is currently an alias used by oh-my-zsh
unalias grv
unalias hub

# prompt customizations
source "$HOME/.p9k.zsh"

# added by travis gem
[ -f /Users/Matthew/.travis/travis.sh ] && source /Users/Matthew/.travis/travis.sh
