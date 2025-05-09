#!/bin/sh
lock() {
    i3lock -i /home/aletod/Pictures/i3_wallpaper.png
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        lock && sleep 2 && systemctl suspend
        ;;
    hibernate)
        lock && sleep 2 && systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
