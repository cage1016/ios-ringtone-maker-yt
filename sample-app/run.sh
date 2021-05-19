#!/usr/bin/env bash

echo YoutTubeID: ${VID}
echo StartTime: ${SS}
echo Duration: ${T}
echo FadeIn: ${FADEIN}
echo FadeOut: ${FADEOUT}

# download audio/mp4 from youtube by annie 
youtubedr download -o ./$VID.mp4 $VID

# crop video
ffmpeg -ss $SS -t $T -i ./$VID.mp4 -filter_complex "afade=d=$FADEIN, areverse, afade=d=$FADEOUT, areverse" -acodec libvorbis -q:a 10 ./$VID.ogg

# convert to m4a
ffmpeg -i ./$VID.ogg -vn -c:a aac -b:a 160k -strict -2 ./$VID.m4a

# rename m4a to m4r
mv ./$VID.m4a /output/$VID.m4r
