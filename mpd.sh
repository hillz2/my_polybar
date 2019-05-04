#!/bin/bash

if [[ "$1" == "vol_up" ]]; then
	mpc volume +5
fi
if [[ "$1" == "vol_down" ]]; then
	mpc volume -5
fi
if [[ "$1" == "prev_song" ]]; then
	mpc prev
fi
if [[ "$1" == "toggle_song" ]]; then
	mpc toggle
fi
if [[ "$1" == "next_song" ]]; then
	mpc next
fi

echo "$(mpc -f '%title%' current | cut -c 1-40) $(mpc -f '\[%time%\]' current)"