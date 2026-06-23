#!/bin/bash

PORT=${1:-8000}

echo "Serving directory: $(pwd)"
echo "Port: $PORT"

while true; do
  echo "[INFO] Starting server at $(date)"
  
  # Run server with sleep prevention
  caffeinate -dims python3 -m http.server $PORT
  
  echo "[WARN] Server stopped/crashed at $(date)"
  echo "[INFO] Restarting in 2 seconds..."
  sleep 2
done
