#!/usr/bin/env bash

# python3 main.py --last 100 -p1 6 --no_gui --dump_state
python3 main.py --last 150 -p1 6 -p2 4 -p3 5 -p4 1 --no_gui --dump_state
echo "Rendering frames..."
python3 render_game.py
echo "Creating video..."
convert -delay 5 -loop 0 $(ls -1 render/*.png | sort -V) -quality 95 game.mp4
