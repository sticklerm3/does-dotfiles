old_wifi_signal(){
  local output=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I)
  local airport=$(echo $output | grep 'AirPort' | awk -F': ' '{print $2}')

  if [ "$airport" = "Off" ]; then
    local color='%F{hotpink}'
    echo -n "%{$color%}Wifi Off"
  else
    local ssid=$(echo $output | grep ' SSID' | awk -F': ' '{print $2}')
    local speed=$(echo $output | grep 'lastTxRate' | awk -F': ' '{print $2}')
    local color='%F{hotpink}'

    [[ $speed -gt 100 ]] && color='%F{greenyellow}'
    [[ $speed -lt 50 ]] && color='%F{indianred}'

    echo -n "%{$color%}$ssid $speed Mb/s%{%f%}" # removed char not in my PowerLine font
  fi
}
