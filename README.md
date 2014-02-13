Transcode Web Video
===================

Transcode videos of any format into MP4, OGV, and WebM.

Installation
------------

Move the `transcode-web-video` folder to someplace permanent. Open Terminal and do:

    mkdir -p ~/bin
    ln -s <path-to-vid2web> ~/bin/
    echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc

Usage
-----

`vid2web -i <filename> [ -o <filename> ] [ -s <width>x<height ] [ -b <kbps> ] [ -t <mm>:<ss> ]`

For example:

    vid2web -i source.mov -o compressed/output -s 720x480 -t 0:30

will give you the following files, in a new folder `compressed`:

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
