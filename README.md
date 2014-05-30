Vid2Web
=======

Transcode videos of any format into MP4, OGV, and WebM.

Installation
------------

On Mac, use [homebrew](http://brew.sh/) to install ffmpeg and mplayer with the
necessary codecs:

    brew uninstall ffmpeg
    brew install --with-theora --with-libvorbis --with-libvpx --with-webm ffmpeg
    brew install mplayer

Move the this folder to someplace permanent, such as your Documents folder.
Open Terminal and do:

    mkdir -p ~/bin
    ln -s ~/Documents/transcode-web-video/vid2web ~/bin/
    echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc

Usage
-----

    vid2web -i source.mov -o outputdir/ -s 720x480 -g 30

will give you the following files, in a new folder called `compressed`:

    compressed/
    | output.mp4
    | output.ogv
    | output.webm
    | output.jpg

Escape wildcards in `-i`, like `\*.mp4`.

### Options

`-i` Path to source video files.

`-o` Path to output directory. By default videos are put in a directory next to
  the input called `vid2web`.

`-s` Size of the output video (like `1920x720`) -- default `640x360`.

`-b` Bitrate of the output video, in kbps -- default `1500k`. A 30-second video
  at 1500 kbps will create a 6MB video.

`-g` Time at which to grab a still image, as seconds -- default `0`. Use the
  format `x5` to capture 5 images, equally spaced. Use the format `+5` to
  capture an image every 5 seconds. Use `-G` to capture only images, and skip
  transcoding videos.
