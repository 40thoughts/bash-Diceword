#!/bin/bash

binFolder="/usr/bin"
confFolder="/usr/share/diceword"

if [ "$(id -u)" != "0" ]
then
  printf "\nThis script must be run as root\n\n"
  exit 1
fi

if [ ! -d "$confFolder" ]
then
  mkdir -p $confFolder
fi

curl -s -o $confFolder/diceware.json https://raw.githubusercontent.com/40thoughts/bash-Diceword/master/res/diceware.json
curl -s -o $binFolder/diceword https://raw.githubusercontent.com/40thoughts/bash-Diceword/master/diceword
chmod +x $binFolder/diceword

if [ -e "$confFolder/diceware.json" ] && [ -e "$binFolder/diceword" ]
then
  printf "\nDiceword has been successfully installed\n"
  printf "\nUse it by typing :\tdiceword -h\n\n"
else
  printf "\nSorry, it seems like something went wrong !!!\n\n"
  exit 1
fi

exit 0
