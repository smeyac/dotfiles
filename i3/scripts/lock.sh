#!/bin/bash

IMG=/tmp/screenshot.png
flameshot full -r > $IMG
convert $IMG -scale 25% -scale 400% $IMG
i3lock -p win -i $IMG
