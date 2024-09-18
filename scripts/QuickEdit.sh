#!/bin/bash
# Rofi menu for Quick Edit / View of Settings (SUPER E)

# define your preferred text editor and terminal to use
editor=${HOME}/.local/nvim-linux64/bin/nvim
tty=wezterm 

configs="$HOME/.config/hypr"

menu(){
  printf "1. edit Applications\n"
  printf "2. edit Environment\n"
  printf "3. edit Startup\n"
  printf "4. edit Settings\n"
  printf "5. edit Keybinds\n"
  printf "6. edit Window Rules\n"
  printf "7. edit Workspace Rules\n"
  printf "8. edit Animations\n"
  printf "9. edit Decorations\n"
  printf "10. edit Monitors\n"
  printf "11. edit Colors\n"
}

main() {
    choice=$(menu | rofi -i -dmenu -config ~/.config/hypr/rofi/config-compact.rasi | cut -d. -f1)
    case $choice in
        1)
            $tty start -- $editor "$configs/applications.conf"
            ;;
        2)
            $tty start -- $editor "$configs/environment.conf"
            ;;
        3)
            $tty start -- $editor "$configs/startup.conf"
            ;;
        4)
            $tty start -- $editor "$configs/settings.conf"
            ;;
        5)
            $tty start -- $editor "$configs/keybinds.conf"
            ;;
        6)
            $tty start -- $editor "$configs/window_rules.conf"
            ;;
        7)
            $tty start -- $editor "$configs/workspace_rules.conf"
            ;;
        8)
            $tty start -- $editor "$configs/animations.conf"
            ;;
        9)
            $tty start -- $editor "$configs/decorations.conf"
            ;;            
        10)
            $tty start -- $editor "$configs/monitors.conf"
            ;;
        11)
            $tty start -- $editor "$configs/colors.conf"
            ;;
        *)
            ;;
    esac
}

main
