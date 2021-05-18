
cd frames

framecount=$(exec ls -1 | wc -l)
# echo framecount: $framecount
# MINUES ONE FROM FRAMECOUNT
framecount=$(expr $framecount - 1)

cd ..
# echo $(expr $framecount + 1) > framecount

start=$(exec stat frames/frame0.png | grep Modify: | cut -c20-32)
# echo start $start

end=$(stat frames/frame$framecount.png | grep Modify: | cut -c20-32)
# echo end $end

startMS=$(echo $start | cut -c10-14)
# echo startMS $startMS
startS=$(echo $start | cut -c7-8)
# echo startS $startS
startM=$(echo $start | cut -c4-5)
# echo startM $startM

endMS=$(echo $end | cut -c10-14)
# echo endMS $endMS
endS=$(echo $end | cut -c7-8)
# echo endS $endS
endM=$(echo $end | cut -c4-5)
# echo endM $endM

elapse=$((10#$endM*60 - 10#$startM*60 + 10#$endS - 10#$startS))
# echo elapse $elapse
# echo elapse > elapse

framerate=$((($framecount+1)/$elapse))
# echo framerate $framerate
echo $framerate



