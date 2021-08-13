######################################################
#
# USAGE: 
#   ./videos-to-frames.sh   INPUT_VIDEO_DIR   OUTPUT_FRAME_DIR
#
######################################################

#!/bin/bash

count=0
suffix=".mpeg"
for filePath in $1/*     # list files
do
    fileName=${filePath##*/}
    videoName=${fileName%"$suffix"}
    echo $count 
    count=$(( $count + 1 ))
    ffmpeg -i $filePath $2/thumb-$videoName-%04d.jpg -hide_banner
done
