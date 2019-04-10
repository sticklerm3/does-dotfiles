# ZSH aliases

# zsh stuff
alias zshconfig="nano ~/.zshrc"
alias zshrc="atom ~/.zshrc"
alias zsh!="source ~/.zshrc"

# hashes for easier cd'ing
# example: cd ~taps
hash -d mytaps="$(brew --prefix)/Homebrew/Library/Taps/sticklerm3/"
hash -d pourhouse="$(brew --prefix)/Homebrew/Library/Taps/sticklerm3/homebrew-pourhouse"

# Commented out as I have them in my omz plugin `alehouse`
# left here to be uncommented if I ever install to a machine without omz
# hash -d brewr="$(brew --repo)"
# hash -d taps="$(brew --prefix)/Homebrew/Library/Taps/"
# hash -d cellar="$(brew --cellar)/"
# hash -d caskroom="$(brew --prefix)/Caskroom/"
# hash -d brche="$(brew --cache)"

hash -d omf=$HOME/.config/omf/
hash -d omz=$HOME/.oh-my-zsh/
hash -d dots=$HOME/.dotfiles/
hash -d bukt=$HOME/.bitbucket/
hash -d icldocs="$HOME/Library/Mobile Documents/com~apple~CloudDocs/Documents/"