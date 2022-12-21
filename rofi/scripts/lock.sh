#!/bin/sh

BLANK='#00000000'
CLEAR='#ffffff22'
#DEFAULT='#ff00ffcc'
DEFAULT='#D11070cc'
#TEXT='#ee00eeee'
TEXT='#D11070cc'
WRONG='#880000bb'
VERIFYING='#bb00bbbb'

i3lock \
--insidever-color=$BLANK     \
--ringver-color=$DEFAULT   \
\
--insidewrong-color=$BLANK   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$WRONG         \
--bshl-color=$WRONG          \
\
--screen 2                   \
--blur 5                     \
--clock                      \
--indicator                  \
--time-str="%H:%M:%S"        \
#--date-str="%A, %Y-%m-%d"       \
#--keylayout 1                \
