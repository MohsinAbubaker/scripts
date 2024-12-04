#!/bin/bash


echo " ===============Create user=========="

#username="mohsin2"

#password="test@123"

read -p "enter the username:"  username

read -p "enter the password:"  password

# this is creating a user

sudo useradd -m $username


#this is setting the password

echo -e "$password\n$password" | sudo passwd $username


echo "===================user Created==================="

