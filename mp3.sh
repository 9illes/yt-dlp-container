#!/bin/sh
docker run -it --rm -v $PWD/downloads:/home/alpine/downloads/ ytdlp:latest -x --audio-format mp3 $1 --audio-quality 2