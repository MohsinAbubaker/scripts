#!/bin/bash

<< disclaimer 
This is a demo
of IF ELSE Condition 
in shell script
disclaimer

read -p " Is it raining (Yes/No)" choice

if [[ $choice == "Yes" || $choice == "yes" ]];
then
	echo "Take an umbrella"
elif [[ $choice == "No" || $choice == "no" ]];
then
	echo "Np need for umbrella"
else 
	echo "You need to use either Yes or No"
fi
