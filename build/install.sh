#!/bin/bash
set -eo pipefail

linux() {
    sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm
    sudo apt-get update
    sudo apt-get install rcm
    lsrc -v
}

osx() {
    brew tap thoughtbot/formulae
    brew install rcm
    lsrc -v
}

if [ "$(uname -s)" = "Darwin" ]; then
    osx
else
    linux
fi
