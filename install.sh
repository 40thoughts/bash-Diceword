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

wget -q https://raw.githubusercontent.com/40thoughts/bash-Diceword/master/res/diceware.json -O $confFolder/diceware.json
wget -q https://raw.githubusercontent.com/40thoughts/bash-Diceword/master/diceword -O $binFolder/diceword
chmod +x $binFolder/diceword

printf "\nDiceword has been succesfully installed\n"
printf "\nUse it by typing :\tdiceword -h\n\n"

exit 0
