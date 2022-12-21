#!/bin/bash

# xfce4-genmon script for displaying current song via playerctl

player=$(playerctl metadata -f {{playerName}} 2>&1)
dingus=$(playerctl metadata 2>&1)

if [[ $dingus == "No players found" ]]; then
#if [[ "$(playerctl status)" != "Playing" ]] && [[ $player != "spotify" ]]; then

    echo ""

else

    # Note: sed on the ampersands escapes them properly for Pango-markup, which genmon depends on
    # Other characters to watchout for are <, >, and '
    # sed 'em with &lt; &gt; and &#39; respectively
    
    album_full=$(playerctl metadata -f '{{album}}')
    album_trunc=$(playerctl metadata -f '{{trunc(album,45)}}')
    
    artist_full=$(playerctl metadata -f {{artist}})
    artist_trunc=$(playerctl metadata -f '{{trunc(artist,45)}}')

    title_full=$(playerctl metadata -f {{title}})
    title_trunc=$(playerctl metadata -f '{{trunc(title,45)}}')

    if (( ${#album_full} == 0 )); then
        album_full='n.a.'
        album_trunc=$album_full
    fi

    if (( ${#artist_full} == 0 )); then
        artist_full=$album_full
        artist_trunc=$album_trunc
    fi

    artist_proper=$(echo $artist_trunc | sed 's/-.*//') #this is just done becase sometimes its like "paramore - topic" when listening to songs on yt

    # Bar text
    #echo "$artist_trunc - $title_trunc"
    echo "$title_trunc - $artist_proper"

    # Tooltip text
    #echo "<tool> <i>$title_full</i>"
    #echo " <i>$album_full</i>"
    #echo " <i>$artist_full</i>"
    #echo "⎯⎯⎯⎯⎯⎯"
    #echo "<b>Playing on:</b> <i>$player</i></tool>"
fi
