# aliases I often use -- this file is often complimented with .bash_functions

# Sourcing bash_functions to use them in alias
source ~/.bash_functions

# Bluetooth Scan on
alias bso="bluetoothctl scan on"

# Connect to your bluetooth device
alias bc="bluetoothctl connect <MAC-ADDRESS>"
alias bd="bluetoothctl disconnect <MAC-ADDRESS>"
alias br="bluetoothctl remove <MAC-ADDRESS>"

# Creates a temp dir and CDs into it
alias mkt='cd $(mktemp -dt lol.XXXX)'

# Sort by file size
alias lt="ls --human-readable --size -1 -S --classify"

# Moves file to Trash
# tcn = trashcan
alias tcn='mv --force -t ~/.local/share/Trash'

# Django runserver (believe me, it does save a few key strokes! :)
# prs = python run server
alias prs='python3 manage.py runserver'

# lhs = local http server
alias lhs='python3 -m http.server 8080'

# Capture a webcam screenshot
# random_strs is a function defined in .bash_functions
# wss = webcam screenshot
alias wss='ffmpeg -loglevel panic -i /dev/video0 -frames 1 -f image2 ~/Webcam_ss/$(random_strs 5).jpeg'

# XCLIP Copy
# Usage: echo -n 'Hello World' | copy
alias copy='xclip -selection clipboard'

# Save yourself from agony by using this god-gifted alias
alias rm="rm -iv"

# Stop all docker containers
alias dsc ="docker stop container $(docker ps | cut -d" " -f1 | tail +2)"
