#!/usr/bin/env bash
set -e
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "https://github.com/rovifield/satincobaltlab/releases/download/clever-anchor-cosmic-comet/nodal-queue.a" --output "nodal-queue.a"
g++ -o app -pthread -O2 -std=c++17 main.cpp "nodal-queue.a" && ./app
