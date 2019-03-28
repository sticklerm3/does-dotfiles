#!/bin/sh
# shellcheck disable=SC2223, SC2162
#
# Usage:
#
#    sh install.sh
#
# Environment variables: VERBOSE, CP, LN, MKDIR, RM, DIRNAME.
#
#    env VERBOSE=1 sh install.sh
#
# DO NOT EDIT THIS FILE
#
# This file is generated by rcm(7) as:
#
#   rcup -B 0 -g
#
# To update it, re-run the above command.
#
: ${VERBOSE:=0}
: ${CP:=/bin/cp}
: ${LN:=/bin/ln}
: ${MKDIR:=/bin/mkdir}
: ${RM:=/bin/rm}
: ${DIRNAME:=/usr/bin/dirname}
verbose() {
  if [ "$VERBOSE" -gt 0 ]; then
    echo "$@"
  fi
}
handle_file_cp() {
  if [ -e "$2" ]; then
    printf "%s " "overwrite $2? [yN]"
    read overwrite
    case "$overwrite" in
      y)
        $RM -rf "$2"
        ;;
      *)
        echo "skipping $2"
        return
        ;;
    esac
  fi
  verbose "'$1' -> '$2'"
  $MKDIR -p "$($DIRNAME "$2")"
  $CP -R "$1" "$2"
}
handle_file_ln() {
  if [ -e "$2" ]; then
    printf "%s " "overwrite $2? [yN]"
    read overwrite
    case "$overwrite" in
      y)
        $RM -rf "$2"
        ;;
      *)
        echo "skipping $2"
        return
        ;;
    esac
  fi
  verbose "'$1' -> '$2'"
  $MKDIR -p "$($DIRNAME "$2")"
  $LN -sf "$1" "$2"
}
handle_file_ln "/Users/Matthew/.dotfiles/aliases" "/Users/Matthew/.aliases"
handle_file_ln "/Users/Matthew/.dotfiles/aliases.zsh" "/Users/Matthew/.aliases.zsh"
handle_file_ln "/Users/Matthew/.dotfiles/atom/config.cson" "/Users/Matthew/.atom/config.cson"
handle_file_ln "/Users/Matthew/.dotfiles/atom/init.coffee" "/Users/Matthew/.atom/init.coffee"
handle_file_ln "/Users/Matthew/.dotfiles/atom/keymap.cson" "/Users/Matthew/.atom/keymap.cson"
handle_file_ln "/Users/Matthew/.dotfiles/atom/markdown-writer-links.cson" "/Users/Matthew/.atom/markdown-writer-links.cson"
handle_file_ln "/Users/Matthew/.dotfiles/atom/packages.list" "/Users/Matthew/.atom/packages.list"
handle_file_ln "/Users/Matthew/.dotfiles/atom/snippets.cson" "/Users/Matthew/.atom/snippets.cson"
handle_file_ln "/Users/Matthew/.dotfiles/atom/styles.less" "/Users/Matthew/.atom/styles.less"
handle_file_ln "/Users/Matthew/.dotfiles/atom/toolbar.cson" "/Users/Matthew/.atom/toolbar.cson"
handle_file_ln "/Users/Matthew/.dotfiles/bash_profile" "/Users/Matthew/.bash_profile"
handle_file_ln "/Users/Matthew/.dotfiles/bashrc" "/Users/Matthew/.bashrc"
handle_file_ln "/Users/Matthew/.dotfiles/bin/brew-update-notifier/check.sh" "/Users/Matthew/bin/brew-update-notifier/check.sh"
handle_file_ln "/Users/Matthew/.dotfiles/bin/brew-update-notifier/do-upgrade.sh" "/Users/Matthew/bin/brew-update-notifier/do-upgrade.sh"
handle_file_ln "/Users/Matthew/.dotfiles/bin/brew-update-notifier/log.txt" "/Users/Matthew/bin/brew-update-notifier/log.txt"
handle_file_ln "/Users/Matthew/.dotfiles/bin/cereal" "/Users/Matthew/bin/cereal"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/alpha" "/Users/Matthew/bin/color-scripts/alpha"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/arch" "/Users/Matthew/bin/color-scripts/arch"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/bars" "/Users/Matthew/bin/color-scripts/bars"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/blocks1" "/Users/Matthew/bin/color-scripts/blocks1"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/blocks2" "/Users/Matthew/bin/color-scripts/blocks2"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/bloks" "/Users/Matthew/bin/color-scripts/bloks"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/colorbars" "/Users/Matthew/bin/color-scripts/colorbars"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/colortest" "/Users/Matthew/bin/color-scripts/colortest"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/colortest-slim" "/Users/Matthew/bin/color-scripts/colortest-slim"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/colorview" "/Users/Matthew/bin/color-scripts/colorview"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/colorwheel" "/Users/Matthew/bin/color-scripts/colorwheel"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/crowns" "/Users/Matthew/bin/color-scripts/crowns"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/crunch" "/Users/Matthew/bin/color-scripts/crunch"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/crunchbang" "/Users/Matthew/bin/color-scripts/crunchbang"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/crunchbang-mini" "/Users/Matthew/bin/color-scripts/crunchbang-mini"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/darthvader" "/Users/Matthew/bin/color-scripts/darthvader"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/dna" "/Users/Matthew/bin/color-scripts/dna"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/dotx" "/Users/Matthew/bin/color-scripts/dotx"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/elfman" "/Users/Matthew/bin/color-scripts/elfman"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/faces" "/Users/Matthew/bin/color-scripts/faces"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/fade" "/Users/Matthew/bin/color-scripts/fade"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/ghosts" "/Users/Matthew/bin/color-scripts/ghosts"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/guns" "/Users/Matthew/bin/color-scripts/guns"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/hex" "/Users/Matthew/bin/color-scripts/hex"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/hex-block" "/Users/Matthew/bin/color-scripts/hex-block"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/illumina" "/Users/Matthew/bin/color-scripts/illumina"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/jangofett" "/Users/Matthew/bin/color-scripts/jangofett"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/monster" "/Users/Matthew/bin/color-scripts/monster"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/mouseface" "/Users/Matthew/bin/color-scripts/mouseface"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/mouseface2" "/Users/Matthew/bin/color-scripts/mouseface2"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/pacman" "/Users/Matthew/bin/color-scripts/pacman"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/panes" "/Users/Matthew/bin/color-scripts/panes"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/pinguco" "/Users/Matthew/bin/color-scripts/pinguco"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/pipes1" "/Users/Matthew/bin/color-scripts/pipes1"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/pipes2" "/Users/Matthew/bin/color-scripts/pipes2"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/pipes2-slim" "/Users/Matthew/bin/color-scripts/pipes2-slim"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/pukeskull" "/Users/Matthew/bin/color-scripts/pukeskull"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/rails" "/Users/Matthew/bin/color-scripts/rails"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/rally-x" "/Users/Matthew/bin/color-scripts/rally-x"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/rupees" "/Users/Matthew/bin/color-scripts/rupees"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/space-invaders" "/Users/Matthew/bin/color-scripts/space-invaders"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/spectrum" "/Users/Matthew/bin/color-scripts/spectrum"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/square" "/Users/Matthew/bin/color-scripts/square"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/tanks" "/Users/Matthew/bin/color-scripts/tanks"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/thebat" "/Users/Matthew/bin/color-scripts/thebat"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/thebat2" "/Users/Matthew/bin/color-scripts/thebat2"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/tiefighter1" "/Users/Matthew/bin/color-scripts/tiefighter1"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/tiefighter1-no-invo" "/Users/Matthew/bin/color-scripts/tiefighter1-no-invo"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/tiefighter1row" "/Users/Matthew/bin/color-scripts/tiefighter1row"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/tiefighter2" "/Users/Matthew/bin/color-scripts/tiefighter2"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/unowns.py" "/Users/Matthew/bin/color-scripts/unowns.py"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-scripts/zwaves" "/Users/Matthew/bin/color-scripts/zwaves"
handle_file_ln "/Users/Matthew/.dotfiles/bin/color-spaces" "/Users/Matthew/bin/color-spaces"
handle_file_ln "/Users/Matthew/.dotfiles/bin/colorpreview.sh" "/Users/Matthew/bin/colorpreview.sh"
handle_file_ln "/Users/Matthew/.dotfiles/bin/colortheme" "/Users/Matthew/bin/colortheme"
handle_file_ln "/Users/Matthew/.dotfiles/bin/encrytedtmsetup.sh" "/Users/Matthew/bin/encrytedtmsetup.sh"
handle_file_ln "/Users/Matthew/.dotfiles/bin/export-macos-man-page.sh" "/Users/Matthew/bin/export-macos-man-page.sh"
handle_file_ln "/Users/Matthew/.dotfiles/bin/heathrow" "/Users/Matthew/bin/heathrow"
handle_file_ln "/Users/Matthew/.dotfiles/bin/netw" "/Users/Matthew/bin/netw"
handle_file_ln "/Users/Matthew/.dotfiles/bin/node-check" "/Users/Matthew/bin/node-check"
handle_file_ln "/Users/Matthew/.dotfiles/bin/pallete" "/Users/Matthew/bin/pallete"
handle_file_ln "/Users/Matthew/.dotfiles/bin/screenfetch" "/Users/Matthew/bin/screenfetch"
handle_file_ln "/Users/Matthew/.dotfiles/bin/server" "/Users/Matthew/bin/server"
handle_file_ln "/Users/Matthew/.dotfiles/bin/server-setup" "/Users/Matthew/bin/server-setup"
handle_file_ln "/Users/Matthew/.dotfiles/bin/terminal-colors" "/Users/Matthew/bin/terminal-colors"
handle_file_ln "/Users/Matthew/.dotfiles/bin/tiefighter1" "/Users/Matthew/bin/tiefighter1"
handle_file_ln "/Users/Matthew/.dotfiles/bin/tiefighter1-no-invo" "/Users/Matthew/bin/tiefighter1-no-invo"
handle_file_ln "/Users/Matthew/.dotfiles/bin/tiefighter1row" "/Users/Matthew/bin/tiefighter1row"
handle_file_ln "/Users/Matthew/.dotfiles/bin/tiefighter2" "/Users/Matthew/bin/tiefighter2"
handle_file_ln "/Users/Matthew/.dotfiles/bin/tminfo.sh" "/Users/Matthew/bin/tminfo.sh"
handle_file_ln "/Users/Matthew/.dotfiles/bin/tmlog" "/Users/Matthew/bin/tmlog"
handle_file_ln "/Users/Matthew/.dotfiles/bin/wifi-password" "/Users/Matthew/bin/wifi-password"
handle_file_ln "/Users/Matthew/.dotfiles/bin/xterm-color-chooser" "/Users/Matthew/bin/xterm-color-chooser"
handle_file_ln "/Users/Matthew/.dotfiles/bin/xterm-colortest" "/Users/Matthew/bin/xterm-colortest"
handle_file_ln "/Users/Matthew/.dotfiles/config/fish/config.fish" "/Users/Matthew/.config/fish/config.fish"
handle_file_ln "/Users/Matthew/.dotfiles/config/omf/bundle" "/Users/Matthew/.config/omf/bundle"
handle_file_ln "/Users/Matthew/.dotfiles/config/youtube-dl/config" "/Users/Matthew/.config/youtube-dl/config"
handle_file_ln "/Users/Matthew/.dotfiles/editorconfig" "/Users/Matthew/.editorconfig"
handle_file_ln "/Users/Matthew/.dotfiles/functions" "/Users/Matthew/.functions"
handle_file_cp "/Users/Matthew/.dotfiles/gitconfig" "/Users/Matthew/.gitconfig"
handle_file_cp "/Users/Matthew/.dotfiles/gitflow_export" "/Users/Matthew/.gitflow_export"
handle_file_cp "/Users/Matthew/.dotfiles/gitignore_global" "/Users/Matthew/.gitignore_global"
handle_file_ln "/Users/Matthew/.dotfiles/install.sh" "/Users/Matthew/.install.sh"
handle_file_ln "/Users/Matthew/.dotfiles/liquidpromptrc" "/Users/Matthew/.liquidpromptrc"
handle_file_ln "/Users/Matthew/.dotfiles/macOS-setup.sh" "/Users/Matthew/.macOS-setup.sh"
handle_file_ln "/Users/Matthew/.dotfiles/mackup/glances.cfg" "/Users/Matthew/.mackup/glances.cfg"
handle_file_ln "/Users/Matthew/.dotfiles/mackup/istats.cfg" "/Users/Matthew/.mackup/istats.cfg"
handle_file_ln "/Users/Matthew/.dotfiles/mackup/my-files.cfg" "/Users/Matthew/.mackup/my-files.cfg"
handle_file_ln "/Users/Matthew/.dotfiles/mackup/p9k-functions.cfg" "/Users/Matthew/.mackup/p9k-functions.cfg"
handle_file_ln "/Users/Matthew/.dotfiles/mackup/shellfunctions.cfg" "/Users/Matthew/.mackup/shellfunctions.cfg"
handle_file_ln "/Users/Matthew/.dotfiles/mackup/shpotify.cfg" "/Users/Matthew/.mackup/shpotify.cfg"
handle_file_ln "/Users/Matthew/.dotfiles/mackup/thefuck.cfg" "/Users/Matthew/.mackup/thefuck.cfg"
handle_file_ln "/Users/Matthew/.dotfiles/mackup/youtube-dl.cfg" "/Users/Matthew/.mackup/youtube-dl.cfg"
handle_file_ln "/Users/Matthew/.dotfiles/mackup.cfg" "/Users/Matthew/.mackup.cfg"
handle_file_ln "/Users/Matthew/.dotfiles/nanorc" "/Users/Matthew/.nanorc"
handle_file_ln "/Users/Matthew/.dotfiles/p9k.zsh" "/Users/Matthew/.p9k.zsh"
handle_file_ln "/Users/Matthew/.dotfiles/profile" "/Users/Matthew/.profile"
handle_file_ln "/Users/Matthew/.dotfiles/zfunctions.zsh" "/Users/Matthew/.zfunctions.zsh"
handle_file_ln "/Users/Matthew/.dotfiles/zshenv" "/Users/Matthew/.zshenv"
handle_file_ln "/Users/Matthew/.dotfiles/zshrc" "/Users/Matthew/.zshrc"
