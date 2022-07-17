#!/bin/bash

mpv-a(){
    # Usage: mpv-a <url_1> <url2>... Play audio without video. Useful for listening video from youtube, twitch, etc
    mpv --no-video "$*"
}

video2gif() {
  # Usage: video2gif <video> (scale) (fps) Convert video to gif file.
  ffmpeg -y -i "${1}" -vf fps="${3:-10}",scale="${2:-320}":-1:flags=lanczos,palettegen "${1}.png"
  ffmpeg -i "${1}" -i "${1}.png" -filter_complex "fps=${3:-10},scale=${2:-320}:-1:flags=lanczos[x];[x][1:v]paletteuse" "${1}".gif
  rm "${1}.png"
}


video2cut(){
    # Usage: video2cut <video> <mode> <start> <end> (mode 0 -t arg, 1 -to arg. default 0) (start) (end)
    MODE=${2:-0}
    case $MODE in
        0) ffmpeg -ss "${2:-00:00:00}" -t "$3" -i "${1}" -c copy "cut_${1}" ;;
        1) ffmpeg -ss "${2:-00:00:00}" -to "$3" -i "${1}" -c copy "cut_${1}" ;;
    esac
}

gif2webm() {
    # Usage: gif2webm <video>
    ffmpeg -i "$1" -c vp9 -b:v 0 -crf 41 "${1}.webm"
}

alias yt-dlp-mp3="yt-dlp --extract-audio --audio-format mp3" # Usage: yt-dlp-mp3 <url>
