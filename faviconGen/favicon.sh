#!/bin/bash
# favicon.sh is a tool that generates a favicon using ImageMagick
#
# How to use:
# - Make a file named input.png (which is the image to turn into a favicon)
# - Download all the files needed from the gist
magick input.png -resize 500x500 temp1.png
magick temp1.png mask.png -alpha Off -compose CopyOpacity -composite favicon.png
rm temp1.png