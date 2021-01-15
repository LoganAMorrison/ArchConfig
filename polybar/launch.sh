#!/usr/bin/env fish

# Terminate already running bar instances
killall -q polybar
# If you bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bar1 >> /tmp/polybar1.log 2>&1 & disown
polybar bar2 >> /tmp/polybar2.log 2>&1 & disown
# polybar workspaces >> /tmp/polybar1.log 2>&1 & disown
# polybar music >> /tmp/polybar2.log 2>&1 & disown
# polybar status >> /tmp/polybar2.log 2>&1 & disown

echo "Bars launched..."
