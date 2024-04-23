#!/bin/bash

pick=$(printf "🞂Shut down\n🞂Restart\n🞂Log out\n\nEXIT" | rofi -dmenu -i -p "⏻  Power" -font "roboto bold 16" -theme-str 'textbox-prompt-sep, entry {enabled: false;}')

case "$pick" in
    "🞂Shut down")
        confirm=$(printf "🞂[Y]es\n🞂[N]o" | rofi -dmenu -i -p "🞟Confirm Shut Down" -font "roboto bold 16" -theme-str 'textbot-prompt-sep, entry {enabled: false;}')
        case "$confirm" in
            "🞂[Y]es")
                poweroff ;;
            "🞂[N]o")
                exit 1 ;;
            *) exit 1 ;;
        esac ;;
    "🞂Restart")
        confirm=$(printf "🞂[Y]es\n🞂[N]o" | rofi -dmenu -i -p "🞟Confirm Restart" -font "roboto bold 16" -theme-str 'textbox-prompt-sep, entry {enabled: false;}')
        case "$confirm" in
            "🞂[Y]es")
                reboot ;;
            "🞂[N]o")
                exit 1 ;;
            *) exit 1 ;;
        esac ;;
    "🞂Log out")
        bspc quit ;;
    "EXIT") exit 1 ;;
    *) exit 1 ;;
esac
