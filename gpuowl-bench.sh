
#!/bin/bash

set -o xtrace

# For each gpu model run this script changing the first argument to reflect hardware name.
# Keep gpuowl.log
# For amdgpu-pro a change is required: -use NOASM
cd gpuowl-bench

# First GIMPS discovered prime
./gpuowl -prp 1398269 -iters 100000 -log 5000 -cpu $1 -results bench-1398269-$1.txt
# Last known prime
./gpuowl -prp 82589933 -iters 100000 -log 5000 -cpu $1 -results bench-82589933-$1.txt
# Largest SEL computed exponent
./gpuowl -prp 332252533 -iters 100000 -log 5000 -cpu $1 -results bench-332252533-$1.txt
