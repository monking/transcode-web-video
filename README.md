Vid2Web
=======

Transcode videos of any format into MP4, OGV, and WebM.

Installation
------------

On Mac, use [homebrew](http://brew.sh/) to install ffmpeg with the necessary codecs:

    brew uninstall ffmpeg
    brew install --with-theora --with-libvorbis --with-libvpx --with-webm ffmpeg

Move the this folder to someplace permanent, such as your Documents folder. Open Terminal and do:

    mkdir -p ~/bin
    ln -s ~/Documents/transcode-web-video/vid2web ~/bin/
    echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc

Usage
-----

    vid2web -i source.mov -o compressed/output -s 720x480 -t 0:30

will give you the following files, in a new folder called `compressed`:

    compressed/
    | output.mp4
    | output.ogv
    | output.webm
    | output.jpg

### Options

`-i` Path to source video file.

`-o` Path to output file, without the file extension. Created in the same directory as the source file.

`-s` Size of the output video (like `1920x720`) -- default `640x360`.

`-b` Bitrate of the output video, in kbps -- default `1500k`. A 30-second video at 1500 kbps will create a 6MB video.

`-t` Time at which to grab a thumbnail/poster image, as minutes:seconds -- default `0:10`.
