#!/bin/bash

FRAME_DIR="$HOME/.shark"
FPS=120

# Ensure chafa is installed
command -v chafa >/dev/null 2>&1 || {
  echo "chafa not found. Install it with: sudo apt install chafa"
  exit 1
}

# Check for frames
if ! ls "$FRAME_DIR"/frame_*.png 1> /dev/null 2>&1; then
  echo "No frames found in $FRAME_DIR. Make sure to place frames there!"
  exit 1
fi

# Loop through frames forever
while true; do
  for frame in "$FRAME_DIR"/frame_*.png; do
    chafa --clear --symbols=block --colors=256 "$frame"
    sleep $(awk "BEGIN {print 1/$FPS}")
  done
done
