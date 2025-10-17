alias cplsh='most_recent_screenshot=$(find ~/Pictures/Screenshots/ -type f -printf "%T@ %p\n" | sort -r | head -n 1 | cut -d " " -f 2-); cat "$most_recent_screenshot" | wl-copy'

alias scsh='grim -g "$(slurp)" ~/Pictures/Screenshots/%Y-%m-%d_%H-%M-%S.png && cplsh'

alias ll='ls -la'
alias speaker='~/.dotfiles/scripts/btconnectspeaker.sh'
alias sspnd='sudo systemctl suspend'
alias vpn='xray -c ~/Projects/Programming/ServerStuff/vpnconfig.json'

PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[38;5;105m\]\w\[\e[0m\] \[\e[38;5;241m\](\[\e[38;5;241m\]${PS1_CMD1}\[\e[38;5;240m\])\[\e[0m\] \n'

# Created by `pipx` on 2024-04-08 13:50:44
export PATH="$PATH:/home/inri/.local/bin"
