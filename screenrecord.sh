#!/bin/bash

i="0"

mkdir frames

while true; do
grim frames/frame$i.png
i=$[$i+1]
echo $i  
done

# TO COMPILE:

