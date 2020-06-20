#!/bin/bash

echo YoutTubeID: ${VID}
echo StartTime: ${SS}
echo Duration: ${T}
echo FadeIn: ${FADEIN}
echo FadeOut: ${FADEOUT}

# download audio/mp4 from youtube by annie 
annie -o ./ -O $VID -f 140 https://www.youtube.com/watch?v=$VID

# crop video
ffmpeg -ss $SS -t $T -i "./$VID.mp4" -filter_complex "afade=d=$FADEIN, areverse, afade=d=$FADEOUT, areverse" -acodec libvorbis -q:a 10 "./$VID.ogg"

# convert to m4a
ffmpeg -i "./$VID.ogg" -y "./$VID.m4a" -stats

# rename m4a to m4r
mv "./$VID.m4a" "/app/output/$VID.m4r"