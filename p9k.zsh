# Powerlevel9k customizations

#=======================================
# MY THEME OVERRIDES: COLORS
#=======================================

POWERLEVEL9K_DIR_HOME_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_VISUAL_IDENTIFIER_COLOR="red"

POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_VISUAL_IDENTIFIER_COLOR="red"

#---------------------------------------
# My Custom Segments
#---------------------------------------
# Weather
POWERLEVEL9K_CUSTOM_ZSH_WEATHER="~/.zsh_weather.zsh"
# POWERLEVEL9K_CUSTOM_ZSH_WEATHER_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_ZSH_WEATHER_BACKGROUND="grey53"
POWERLEVEL9K_CUSTOM_ZSH_WEATHER_VISUAL_IDENTIFIER_COLOR="cyan"

# *******iTunes now playing*********#####
POWERLEVEL9K_CUSTOM_NOW_PLAYING='~/.nowplaying'
POWERLEVEL9K_CUSTOM_NOW_PLAYING_BACKGROUND='lightslategrey'
POWERLEVEL9K_CUSTOM_NOW_PLAYING_FOREGROUND='greenyellow'
POWERLEVEL9K_CUSTOM_NOW_PLAYING_ICON="\uf886"

#Get WIFI info
POWERLEVEL9K_CUSTOM_ZSH_WIFI_SIGNAL="~/.zsh_wifi_signal"
POWERLEVEL9K_CUSTOM_ZSH_WIFI_SIGNAL_BACKGROUND="mediumpurple4"
POWERLEVEL9K_CUSTOM_ZSH_WIFI_SIGNAL_FOREGROUND="grey37"
POWERLEVEL9K_CUSTOM_ZSH_WIFI_SIGNAL_ICON="\ufaa8"

# *****  dir  *****
POWERLEVEL9K_HOME_ICON="\uf1d1"                  # Sets icon to empire logo 
POWERLEVEL9K_HOME_SUB_ICON="\ufCd7"              # sets icon to lava-lamp ﳓ
#POWERLEVEL9K_FOLDER_ICON=""
POWERLEVEL9K_USER_ICON="\uFB8A"                  # Skull ﮊ

# segment/sub segment separators
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\uE0D0"     # 
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="\uE0D0"    # 

POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR="\ue0d0"  # 
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR="\ue0d0" # 

#---------------------------------------
# Development Environment Segments
#---------------------------------------

POWERLEVEL9K_VCS_GIT_ICON="\uf1d3"           # 
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON="\uf5a7" # sets bb to mdi bucket
POWERLEVEL9K_VCS_GIT_GITHUB_ICON="\uf408"    # Sets gh to octicat
POWERLEVEL9K_VCS_STASH_ICON="\ufCa4"         # sets stash to weed ﲤ

POWERLEVEL9K_COLOR_SCHEME="dark" # "light" or "dark"
POWERLEVEL9K_MODE='nerdfont-complete'

#=======================================
# PROMPT Segments
#=======================================
# Choose which segments to display in your prompt

# Segment list for left prompt
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
# Segment list for right prompt
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

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

#================================================================================
# ******************OLD/WORKING CURRENTLY-PROMPT******************
#================================================================================
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(custom_now_playing custom_zsh_weather custom_zsh_wifi time)

#=======================================
# LOADING POWERLEVEL9K
#=======================================

# Option 1: Install for Oh-My-ZSH
# $ git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# ZSH_THEME="powerlevel9k/powerlevel9k"

# Option 2: Install with homebrew:
# $ brew tap sambadevi/powerlevel9k
# $ brew install sambadevi/powerlevel9k/powerlevel9k
# then uncomment the following line and reload your shell!
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

# To-Do: want to add different prompts here, depending on terminal!
# ie: want to use a non p9k promt for termius (on iphone) to have a smaller, nerd font free, prompt!
# if [[  "$TERM_PROGRAM" == "iTerm.app"  ]]; then
#   source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
# fi
