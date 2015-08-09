#!/bin/bash

binFolder="/usr/bin"
confFolder="/usr/share/diceword"

if [ ! -d "$confFolder" ]
then
  mkdir -p $confFolder
fi

wget https://raw.githubusercontent.com/40thoughts/bash-Diceword/master/res/diceware.json -O $confFolder/diceware.json
wget https://raw.githubusercontent.com/40thoughts/bash-Diceword/master/diceword -O $binFolder/diceword
chmod +x $binFolder/diceword

printf "\nDiceword has been succesfully installed\n"
printf "\nUse it by typing :\tdiceword -h\n\n"

exit 0
