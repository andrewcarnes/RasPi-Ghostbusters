#!/bin/sh

DIRECTORIES=(
    /home/$USER/Pictures
    /home/$USER/Desktop
    /home/$USER/Templates
    /home/$USER/python_games
    /home/$USER/Videos
    /home/$USER/.local
    /home/$USER/Music)

for dir in $DIRECTORIES; do mkdir -p $dir; done
mkdir quarantine;

wget https://raw.githubusercontent.com/andrewcarnes/RasPi-Ghostbusters/master/ghosts/.flyingdutchman.gh0st -P "/home/$USER/Pictures"
wget https://raw.githubusercontent.com/andrewcarnes/RasPi-Ghostbusters/master/ghosts/casper.gh0st -P "/home/$USER/Desktop"
wget https://raw.githubusercontent.com/andrewcarnes/RasPi-Ghostbusters/master/ghosts/.beetlejuice.gh0st -P "/home/$USER/Templates"
wget https://raw.githubusercontent.com/andrewcarnes/RasPi-Ghostbusters/master/ghosts/.boo.gh0st -P "/home/$USER/python_games"
wget https://raw.githubusercontent.com/andrewcarnes/RasPi-Ghostbusters/master/ghosts/.slimer.gh0st -P "/home/$USER/Videos"
wget https://raw.githubusercontent.com/andrewcarnes/RasPi-Ghostbusters/master/ghosts/.staypuft.gh0st -P "/home/$USER/.local"
wget https://raw.githubusercontent.com/andrewcarnes/RasPi-Ghostbusters/master/ghosts/.swayze.gh0st -P "/home/$USER/Music"

clear
echo Download Complete.
echo -e Hunter beware... You\'re in for a scare\!