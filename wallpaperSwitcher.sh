#!/bin/bash

# Script to randomly set Background from files in a directory

# Directory Containing Pictures
DIR="/home/cliu/Pictures/Wallpapers"

while true; do
# Command to Select a random jpg file from directory
# Delete the *.jpg to select any file but it may return a folder
#PIC=$(ls $DIR/*.jpg | shuf -n1)
PIC=$(ls $DIR/* | shuf -n1)

# Command to set Background Image
#The next line works for ubuntu 11.04
#gconftool -t string -s /desktop/gnome/background/picture_filename $PIC

#The next line works for ubuntu 11.10
gsettings set org.gnome.desktop.background picture-uri "file:///$PIC"
sleep 1800
done
