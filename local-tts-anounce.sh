#!/usr/bin/env bash

## Author: MeaTLoTioN
##   Date: 2021-08-10
##
## Pre-requisites;
## apt install mpg321
## pip install gTTS
##
## requires 1 argument, the username/handle
## optional 2nd argument -m to play a modem sound prior to caller info
##
## Suggested use:
##
## ╔════════════════════ Command Options ════════════════════╗
## ║                                                         ║
## ║ Command    │ (DD) Exec external program                 ║
## ║ Data       │ /path/to/local-tts-anounce.sh %U           ║
## ║ Access     │ !OI                                        ║
## ║ Grid Event │ Selected                                   ║
## ║                                                         ║
## ╚═════════════════════════════════════════════════════════╝

if [ $# -lt 1 ]; then echo "No argument supplied, aborting!"; exit 1; fi

USER=$1
DATE=$(date)
TEXT="New call from $USER on $DATE"

if [[ $2 == "-m" ]]; then
  $(mpg321 -q modem1.mp3 && gtts-cli "$TEXT"|mpg321 -q - 2>/dev/null) &
else
  gtts-cli "$TEXT"|mpg321 -q - 2>/dev/null &
fi
