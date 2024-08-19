#!/bin/bash

echo -e "------------ IMPORTANT -----------------\n"\
     "THIS SCRIPT MUST BE EXECUTED ONLY WITHIN THE FOLDER WHERE THE DOTFILES "\
     "WILL BE STORED\n"\
     "It means, if you just cloned the repo and did not move the dotfiles to where "\
     "you want to store them, you should do it now, before running this script. "\
     "Created symlinks are going to point to the folders in the .config folder. "\
     "It means that if you don't move them and keep in the 'Downloads' directory you "\
     "are very likely to eventually delete them and brake your system. "\
     "Move the entire cloned repository folder to /home/your_username/ and "\
     "run this script from there."

user_config_dir="$HOME/.config/"
script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
config_files="$script_dir/.config"

echo "[+] Original config files are successfully located at : $config_files"

echo "[?] Are you sure you want to create symlinks for the CURRENT USER "\
     "at $user_config_dir ? [Y/n]"
read input

if [ "$input" != "Y" -a "$input" != "y" ]; then
    echo "[-] Aborted"
    exit
fi

find "$config_files" -mindepth 1 -maxdepth 1 -type d | while read -r dir; do
    echo "[+] Currently working on: $dir"
    if [[ -d "$user_config_dir$(basename $dir)" ]]; then
        echo "[!] Config folder for $(basename $dir) is already present, skipping it"
        continue
    fi
    echo "[+] Creating symlink $user_config_dir$(basename $dir) -> $dir"
    ln -s "$dir" "$user_config_dir"
done

