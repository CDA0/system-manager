#! /bin/bash

action=$(yad --width 300 --entry --title "System Logout" \
  --image=gnome-shutdown \
  --button="Switch User:2" \
  --button="Ok:0" --button="Close:1" \
  --text "Choose action:" \
  --entry-text \
  "Power Off" "Reboot" "Suspend" "Hibernate" "Logout")

ret=$?
[[ $ret -eq 1 ]] && exit 0

if [[ $ret -eq 2 ]]; then
  gdmflexiserver --startnew &
  exit 0
fi

case $action in
Power*) cmd="shutdown -h now" ;;
Reboot*) cmd="reboot" ;;
Suspend*) cmd="systemctl suspend" ;;
Hibernate*) cmd="systemctl hibernate" ;;
Logout*) cmd="bspc quit" ;;
*) exit 1 ;;
esac

eval exec "$cmd"
