#!/bin/bash

echo "This is a normal functioning calculator that can add or subtract"

echo "Please state your first number"

error=true

read a

echo "Please state your second number"

read b

echo "Would you like to add,subtract or multiply?"

read opinput

if [ $opinput = "add" ]
then

operator="+"

elif [ $opinput = "subtract" ]
then

operator="-"

elif [ $opinput = "multiply" ]
then

operator="*"

else

error=false

echo "This is not a operator"

fi


if [ $error = true ]
then

sum=$(($a$operator$b))

echo "The result is:"$sum

fi
echo "Anything else?"

read anyelse

if [ $anyelse = "help" ]
then

notify-send "You are the best, Even if it doesn't seem like it right now" "Don't let the past stop you where you are, Create more memories and keep this train going"

echo "or if you wanted to use the documentation use ./calc.sh --help"

else

exit 0

fi
