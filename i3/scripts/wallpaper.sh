#!/bin/bash

if [[ -f ~/.fehbg && -x ~/.fehbg ]]; then
  ~/.fehbg & > /dev/null
fi

for c in {1..3}
do
  if python ~/git/BingWallpaper/BingWallpaper.py -folder Pictures/BingWallpaper --silent -c "feh --bg-scale {{}}"; then
    exit 0;
  fi

  sleep 5
done
