#!/bin/bash

# Create a temporary file and delete it when the code exits
SCR_IMG="$(mktemp).png"
trap 'rm $SCR_IMG' EXIT

# Increase quality with option `-q`
# from default 75 to 100 for a better capture
scrot -s $SCR_IMG -q 100

cargo run --release -- --which large --image $SCR_IMG

exit
