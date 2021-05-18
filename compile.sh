# ffmpeg -framerate 8 -i img%d.png output.mp4 -c:v libx264 -pix_fmt yuv420p out.mp4

# echo SECONDS: 
# read seconds

# echo FRAMES:
# read frames

# framerate=$(expr $frames / $seconds)
framerate=$(exec /bin/bash framerate.sh)
echo FRAMERATE: $framerate

ffmpeg -framerate $framerate -i frames/frame%d.png output.mp4

rm -rf frames/frame*