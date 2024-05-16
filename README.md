# yt-dlp-container

Containerized [yt-dlp](https://github.com/yt-dlp/yt-dlp)

## Build

```sh
docker build . -t "ytdlp:latest"
```

## Usage

### Extracting audio track as mp3

Parameter `audio-quality` lower is better.

```sh
docker run -it --rm -v $PWD/downloads:/home/alpine/downloads/ ytdlp:latest -x --audio-format mp3 {YOUTUBE_URL} --audio-quality 2 -o "/home/alpine/downloads/%(title)s.%(ext)s"

or

./mp3.sh {YOUTUBE_URL}
```

Extracted files are in the `./downloads` directory.
