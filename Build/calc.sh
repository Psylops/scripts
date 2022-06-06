#!/bin/bash

error=true

if [[ ${1} = "--help" ]]
then

echo "pong!"

exit 0

fi

echo -e "\e[36m\e[1mThis is a normal functioning calculator that can add,subtract,multiply and divide"
calc() {

echo -e "\e[36mPlease state your first number" 

read -p $'\e[92m' a

echo -e "\e[36mPlease state your second number, it can't have any letters"

read -p $'\e[92m' b

echo -e "\e[36mWould you like to add,subtract,multiply or divide?"

read -p $'\e[92m' opinput

if [ $opinput = "add" ]
then

operator="+"

elif [ $opinput = "subtract" ]
then

operator="-"

elif [ $opinput = "multiply" ]
then

operator="*"

elif [ $opinput = "divide" ]
then

operator="/"

elif [ $opinput = "modulo" ]
then

operator="%"

else

error=false

echo -e "\e[31mThat is not a operator " 

fi

if [ $error = true ]
then

sum=$(($a$operator$b))

echo -e "\e[36mThe result is:\e[35m"$sum

fi
echo -e "\e[36mAnything else?"

read -p $'\e[92m' anyelse

if [ $anyelse = "help" ]
then

notify-send "You are the best, Even if it doesn't seem like it right now" "Don't let the past stop you where you are, Create more memories and keep this train going"

echo -e "\e[93mor if you wanted to use the documentation use ./calc.sh --help"

elif [ $anyelse = "calculate" ]
then

calc

else

echo -e "\e[36mGoodbye!"

exit 0

fi
}
calc