#! /bin/sh
#
# Script to automatically download the radio program 'Alien Air Music' on KXLU
# Provided with no warranty, use freely
#
#
# add the following lines to crontab, assumes pacifc standard time:
# 
# 59 19 * * 0 sh /home/brian/rip-aar.sh
# 01 22 * * 0 kill -9 `cat /tmp/rip-aar.pid`
#
# change the MP3 variable to the directory you want to save to
#

NOW=$(date +"%Y-%m-%d")
MP3="/home/brian/Music/alien_air_music/Alien-Air-Music-$NOW.mp3"

mplayer -dumpstream -dumpfile $MP3 "http://ednixon.com:8120/stream" &

echo $! > /tmp/rip-aar.pid
