#Get the weather information from https://www.apixu.com/
#Just create a free account to have an API key
#Download jq do convert json

zsh_weather() {
    local weather=$(curl -s "https://api.apixu.com/v1/current.json?key="1bcd22a5fb29415db1e193801180509"&q="60448"")
    local temp=$(echo $weather | jq .current.temp_c)
    local condition=$(echo $weather | jq .current.condition.text)
    #Default value
    local color='%F{green}'
    local symbol="\uf2c7"

    if [[ $condition == *"rain"* ]]; then
        symbol="\uf043"
        color='%F{blue}'
    fi

    if [[ $condition == *"cloudy"* || $condition == *"Overcast"* ]]; then
        symbol="\ufa94"
        color='%F{grey}'
    fi

    if [[ $condition == *"Sunny"* ]]; then
        symbol="\ufa98"
        color='%F{yellow}'
    fi
    echo -n "%{$color%}$temp\u2103  $symbol"
}
