#!/bin/sh

# Temporarily close conky.

echo "Monitoring started. Watching for Conky..."

while true; do
    # Check if conky is running
    if pgrep -x "conky" > /dev/null; then
        # Instantly kill it
        killall -9 conky 2>/dev/null
        echo "[$(date +%T)] Conky detected and killed!"
    fi
    # Sleep for half a second to prevent high CPU usage
    sleep 0.5
done
