#!bash

mplayer -quiet -really-quiet  -cookies -cookies-file /tmp/cookie.txt $(youtube-dl -g --max-quality 720p --cookies /tmp/cookie.txt $1)
