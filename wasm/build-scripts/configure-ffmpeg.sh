#!/bin/bash

set -euo pipefail
source $(dirname $0)/var.sh

echo "FFMPEG_CONFIG_FLAGS=${FFMPEG_CONFIG_FLAGS_BASE[@]}"
emconfigure ./configure "${FFMPEG_CONFIG_FLAGS_BASE[@]}"
