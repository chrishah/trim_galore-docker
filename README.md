# trim_galore-docker
Ubuntu 18.04 with trim galore!

The image contains a full install of [trim Galore](https://github.com/FelixKrueger/TrimGalore), including all necessary dependencies. I am not part of the trim Galore! team - I just made this image.

In detail, the image is set up with:
 - Ubuntu 18.04
 - Python 3.6.7
 - Cutadapt 2.0
 - fastqc 0.11.8
 - trim Galore 0.6.0

To run [trim Galore](https://github.com/FelixKrueger/TrimGalore) you can do the following (this will mount the directory `/in` of the container to the current working directory on your local machine, and allow you to access files in this directory and any sub-directories):
```bash
$ docker run --rm -v $(pwd):/in -w /in chrishah/trim_galore:0.6.0 trim_galore
```

You can also enter the container environment and work within it. All executables should be in the `PATH`.
```bash
$ docker run -it --rm -v $(pwd):/in -w /in chrishah/trim_galore:0.6.0 /bin/bash
```

