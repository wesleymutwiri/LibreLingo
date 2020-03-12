#!/usr/bin/env bash

sentence=$1
filename=`echo $1 | tr '[:upper:]' '[:lower:]' | sed 's/ /_/g'`

if test -f "./static/voice/es___$filename.mp3"; then
	exit 0
fi

aws2 polly synthesize-speech \
    --output-format mp3 \
    --output text \
    --voice-id Lupe \
    --language-code es-MX \
    --engine neural \
    --text "$sentence" \
    ./static/voice/es___$filename.mp3 \
    > /dev/null
