#!/bin/bash

dingus=$(playerctl metadata 2>&1)

if [[ $dingus == "No players found" ]]; then
  echo ""
else
  paused=$(playerctl status)
  if [[ $paused == "Paused" ]]; then
   echo ""
 else
   echo ""
  fi
fi
