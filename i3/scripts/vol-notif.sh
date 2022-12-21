#copyright 2022 Luna Aphelion <luna-aphelion@outlook.com>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License

#close all notifications with dunst, change this to an apropriate command if using a different notif daemon
#dunstctl close-all

volume=$(amixer -D pulse get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1)
muted=$(amixer -D pulse get Master | grep '%' | head -n 1 | cut -d ']' -f 2 | cut -d '[' -f 2)

#imma leave these lines in cause there useful for debugging sometimes
#echo $volume
echo $muted

bar=$(seq -s "─" $(($volume / 5)) | sed 's/[0-9]//g')
if [[ $muted = "off" || $volume == "0" ]]; then
 #use the muted icon
 notify-send "muted" -i "/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-muted.svg" -r 1
 #dunstify -r 1 -I "/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-muted.svg" "muted"
elif [[ $volume -ge "30" ]]; then
 #use the high volume icon
 notify-send "$volume  $bar" -i "/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-high.svg" -r 1
 #dunstify -r 1 -I /usr/share/icons/Faba/48x48/notifications/notification-audio-volume-high.svg "$volume $bar"
else
 #use the low volume icon
 notify-send "$volume  $bar" -i "/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-low.svg" -r 1
 #dunstify -r 1 -I "/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-low.svg" "$volume $bar"
fi
