#!/bin/bash

dingus=$(playerctl metadata 2>&1)

if [[ $dingus == "No players found" ]]; then
  echo ""
else
  echo ""
fi
