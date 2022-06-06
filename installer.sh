#!/bin/bash

if [ ${1} = "self-install" ]
then



sudo cp -r ./installer /usr/bin && cp -r ./installer /bin

fi

if [ ${1} = "install" ]
then

cd Downloads || exit 0

wget https://github.com/Psylops/calculator-script/blob/main/Build/calc

chmod 755 calc

sudo cp -r ./calc /bin && cp -r ./calc /usr/bin

fi

if [ ${1} = "uninstall" ]
then

sudo rm -r /bin/calc && rm -r /usr/bin/calc

fi