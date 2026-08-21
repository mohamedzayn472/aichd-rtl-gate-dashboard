@echo off
title RTL Gate Estimator Launcher
echo ===================================================
echo Starting local server on http://localhost:8080...
echo Close this window to stop the server.
echo ===================================================
start "" "http://localhost:8080/index.html"
python -m http.server 8080
