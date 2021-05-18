# Very Bad Wayland Screen Recorder
I've written this using grum and bash, because I wasn't able to get any of the Gnome supported Wayland screen capture software working on Debian/Sway. 

## Limitations
This is literally just taking a lot of screenshots using `grum`, it has a low framerate. There is also no audio.

## Runing screen recorder
Dependencies:
- ffmpeg
- grim

`git clone https://github.com/romanobrien/badwaylandscr`

`cd badwaylandscr`

`./screenrecord.sh`

To stop recording: `Ctrl+C`

## Compiling video

`./compile.sh`

Video will record in the correct framerate (_likely very slow: ~8fps_)

`output.mp4` is the output video.

