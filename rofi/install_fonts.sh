#!/bin/bash

# This script installs fonts from the original git repos

FONT_DIR="$HOME/.local/share/fonts/"

wget https://github.com/adi1090x/rofi/raw/master/fonts/GrapeNuts-Regular.ttf -O $FONT_DIR/GrapeNuts-Regular.ttf
wget https://github.com/adi1090x/rofi/raw/master/fonts/Icomoon-Feather.ttf -O $FONT_DIR/Icomoon-Feather.ttf
wget https://github.com/adi1090x/rofi/raw/master/fonts/Iosevka-Nerd-Font-Complete.ttf -O $FONT_DIR/Iosevka-Nerd-Font-Complete.ttf
wget https://github.com/adi1090x/rofi/raw/master/fonts/JetBrains-Mono-Nerd-Font-Complete.ttf -O $FONT_DIR/JetBrains-Mono-Nerd-Font-Complete.ttf
