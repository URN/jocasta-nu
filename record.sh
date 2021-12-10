#! /bin/sh

time=$(date +%Y-%m-%dT%H%Z -d @$(( $(date +%s) + 300 )) )

ffmpeg -i $ICECAST -t $(( 60 * 70 )) /data/$time.mp3