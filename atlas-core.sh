#!/bin/bash
# Autonomous heartbeat script

HEARTBEAT_FILE="$HOME/.atlas_heartbeat"
REPO_URL="git@github.com:Ebrient97/atlas-core.git"

function heartbeat() {
  date +"%Y-%m-%d %H:%M:%S" > "$HEARTBEAT_FILE"
  echo "Heartbeat sent at $(cat $HEARTBEAT_FILE)"
}

while true; do
  heartbeat
  sleep 60
done
