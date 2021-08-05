#!/bin/bash

if cat /proc/acpi/button/lid/LID/state | grep closed; then
  xrandr --output eDP-1 --off
else
  if ! xrandr --listmonitors | grep eDP-1; then
    xrandr --output eDP-1 --on
  fi
fi
