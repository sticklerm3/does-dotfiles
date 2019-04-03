# gitignore-io
function gi() { curl -sL https://www.gitignore.io/api/$@; }

_gitignoreio_get_command_list() {
    curl -sL https://www.gitignore.io/api/list | tr "," "\n"
}

_gitignoreio() {
    compset -P '*,'
    compadd -S '' $(_gitignoreio_get_command_list)
}

# compdef _gitignoreio gi

# Create a new directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$_"
}

# who is using the laptop's iSight camera?
# thanks to https://github.com/paulirish/ for this!
camerausedby() {
    echo "Checking to see who is using the iSight camera… 📷"
    usedby=$(lsof | grep -w "AppleCamera\|USBVDC\|iSight" | awk '{printf $2"\n"}' | xargs ps)
    echo -e "Recent camera uses:\n$usedby"
}

function localip() {
    function _localip() { echo "📶  "$(ipconfig getifaddr "$1"); }
    export -f _localip
    local purple="\x1B\[35m" reset="\x1B\[m"
    networksetup -listallhardwareports |
        sed -r "s/Hardware Port: (.*)/${purple}\1${reset}/g" |
        sed -r "s/Device: (en.*)$/_localip \1/e" |
        sed -r "s/Ethernet Address:/📘 /g" |
        sed -r "s/(VLAN Configurations)|==*//g"
}

# pip zsh completion start
function _pip_completion() {
    local words cword
    read -Ac words
    read -cn cword
    reply=($(COMP_WORDS="$words[*]" \
        COMP_CWORD=$((cword - 1)) \
        PIP_AUTO_COMPLETE=1 $words[1]))
}
compctl -K _pip_completion pip
compctl -K _pip_completion pip3
# pip zsh completion end

#man2pdf
manp() {
    man -t $* | ps2pdf - - | open -f -a Preview
}
