# Basic script to kill all old bars and launch new.

# Terminate already running bad instances
killall -q polybar

COUNT=$(polybar -m | wc -l)
if [ $COUNT -eq 1 ]; then
  PRIMARY=eDP-1 polybar --reload primary &
  exit 0
fi

if ! cat /proc/acpi/button/lid/LID/state | grep closed; then
  SECONDARY=eDP-1 polybar --reload secondary &
fi

PRIMARY=$(polybar -m | grep -v eDP-1 | cut -d':' -f1 | head -1)
SECONDARY=$(polybar -m | grep -v eDP-1 | cut -d':' -f1 | grep -v $PRIMARY)

PRIMARY=$PRIMARY polybar --reload primary &
for m in $SECONDARY; do
  SECONDARY=$m polybar --reload secondary &
done

