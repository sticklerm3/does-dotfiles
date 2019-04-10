# Powerlevel9k customizations
POWERLEVEL9K_MODE='nerdfont-complete'
################################################################################
# ************************** BUILT-IN SEGMENT OVERRIDES ************************
################################################################################
#******************************** ICONS ****************************************
POWERLEVEL9K_HOME_ICON="\uf286"     # Sets icon to fort awesome
POWERLEVEL9K_HOME_SUB_ICON="\uf489" # sets icon to term
# POWERLEVEL9K_HOME_FOLDER_ABBREVIATION="%F{red} $(print_icon 'HOME_ICON') %F{cyan}"
# POWERLEVEL9K_FOLDER_ICON=""
POWERLEVEL9K_USER_ICON="\uf1d1"  # Empire 
POWERLEVEL9K_SSH_ICON="\uf135"   # rocket
POWERLEVEL9K_APPLE_ICON="\uf535" # Finder Face

# Directory Trunication
# '/usr/share/plasma' would show as '/u/s/plasma'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

#--------------------------------- VCS ----------------------------------------#
POWERLEVEL9K_VCS_GIT_ICON="\uf1d3"           # 
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON="\uf5a7" # sets bb to mdi bucket
POWERLEVEL9K_VCS_GIT_GITHUB_ICON="\uf408"    # Sets gh to octicat
POWERLEVEL9K_VCS_STASH_ICON="\ufCa4"         # sets stash to weed ﲤ

POWERLEVEL9K_DIR_HOME_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_VISUAL_IDENTIFIER_COLOR="red"

POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_VISUAL_IDENTIFIER_COLOR="red"

################################################################################
#************************* Custom Segments *************************************
################################################################################
#---------------------------- WEATHER ----------------------------------------#
POWERLEVEL9K_CUSTOM_ZSH_WEATHER="~/.p9k/weather_zsh"
POWERLEVEL9K_CUSTOM_ZSH_WEATHER_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_ZSH_WEATHER_BACKGROUND="grey53"

#------------------------------ iTunes ----------------------------------------#
POWERLEVEL9K_CUSTOM_NOW_PLAYING='~/.nowplaying'
POWERLEVEL9K_CUSTOM_NOW_PLAYING_BACKGROUND='lightslategrey'
POWERLEVEL9K_CUSTOM_NOW_PLAYING_FOREGROUND='greenyellow'
POWERLEVEL9K_CUSTOM_NOW_PLAYING_ICON="\uf886"

#-------------------------------- WIFI ----------------------------------------#
POWERLEVEL9K_CUSTOM_ZSH_WIFI_SIGNAL="~/.p9k/airport_status"
POWERLEVEL9K_CUSTOM_ZSH_WIFI_SIGNAL_BACKGROUND="black"
# POWERLEVEL9K_CUSTOM_ZSH_WIFI_SIGNAL_ICON="\ufaa8"

#----------------------------- BATTERY ----------------------------------------#
POWERLEVEL9K_CUSTOM_ZSH_BATTERY="~/.p9k/power_stats"
POWERLEVEL9K_CUSTOM_ZSH_BATTERY_BACKGROUND="black"

################################################################################
#************************* PROMPT SETTINGS *************************************
################################################################################
POWERLEVEL9K_COLOR_SCHEME="dark"                 # "light" or "dark"

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\uE0D0"     # 
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR="\ue0d0"  # 

POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="\uE0D0"    # 
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR="\ue0d0" # 

################################################################################
# PROMPT Segments
################################################################################
# Choose which segments to display in your prompt

# You can also use different prompts in different environments, e.g. for TMUX, you might use
#if [[ "${TERM}" =~ "tmux" || "${TERM}" =~ "screen" ]]; then
#	# Segment list for left prompt
#	POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir_writable dir background_jobs command_execution_time vi_mode)
#	# Segment list for right prompt
#	POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs rbenv todo)
#else
#	# Segment list for left prompt
#	POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir_writable dir background_jobs command_execution_time vi_mode)
#	# Segment list for right prompt
#	POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs rbenv todo date time battery)
#fi

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(custom_now_playing custom_zsh_battery custom_zsh_wifi_signal time)

#=======================================
# LOADING POWERLEVEL9K
#=======================================

# Option 1: Install for Oh-My-ZSH
# $ git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
ZSH_THEME="powerlevel9k/powerlevel9k"

# Option 2: Install with homebrew:
# $ brew tap sambadevi/powerlevel9k
# $ brew install sambadevi/powerlevel9k/powerlevel9k
# then uncomment the following line and reload your shell!
# source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
