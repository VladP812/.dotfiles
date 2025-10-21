#!/usr/bin/env bash

# Get the address of the focused window
focused_addr=$(hyprctl activewindow -j | jq -r '.address')

# Get PID and class name of focused window
read -r pid class <<<$(hyprctl clients -j | jq -r --arg addr "$focused_addr" \
    '.[] | select(.address == $addr) | "\(.pid) \(.class)"')

# Default to home directory
cwd="$HOME"

# If it's an Alacritty window, try to get its working directory
if [[ "$class" == "Alacritty" && -n "$pid" ]]; then
    # Get the child process of alacritty (the shell)
    shell_pid=$(pgrep -P "$pid")

    # Check cwd via /proc
    if [[ -n "$shell_pid" && -d "/proc/$shell_pid/cwd" ]]; then
        cwd=$(readlink -f "/proc/$shell_pid/cwd" 2>/dev/null || echo "$HOME")
    fi
fi

# Launch new terminal in that directory
alacritty --working-directory "$cwd" &
