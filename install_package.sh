#!/bin/bash

echo "first argument: $1"
echo "second arguemnt: $2"
echo "all the argument: $@" 
echo "installing $1"
sudo apt-get install $1 -y 
