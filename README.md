# [lgrachov.github.io](https://lgrachov.github.io)

This is my blog built on GitHub Pages and Jekyll.

## Development

### Creating favicons
The script provided uses ImageMagick v7. Make sure that you have ImageMagick v7 or later installed in order to use the script. Check the version by running this command in the terminal:
```bash
$ magick -version
Version: ImageMagick 7.1.1-4 Q16-HDRI aarch64 20976 https://imagemagick.org
Copyright: (C) 1999 ImageMagick Studio LLC
License: https://imagemagick.org/script/license.php
Features: Cipher DPC HDRI Modules OpenMP(4.5) 
Delegates (built-in): bzlib cairo djvu fftw fontconfig freetype gslib gvc heic jbig jng jp2 jpeg jxl lcms lqr ltdl lzma openexr pangocairo png ps raqm raw rsvg tiff webp wmf x xml zip zlib
Compiler: gcc (13.0)
```

To run the script go to the `faviconGen` directory and run the `favicon.sh` script. If it is not marked as an executable, or you get the error below:
```
$ ./favicon.sh
bash: ./favicon.sh: Permission denied
# Then run this:
$ chmod +x favicon.sh
```

To generate a favicon, place the image in the folder, and name it `input.png`, and then run the script.

> [!TIP]
> The `mask.png` file can be any shape you want! The black is transparent, and white is opaque! Or just follow [ImageMagick's official guide](https://imagemagick.org/Usage/masking/#masks)!

After generation, put the generated favicon into the `img` folder with the same name.