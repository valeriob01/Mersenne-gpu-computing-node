
#!/bin/bash

set -o xtrace

# For each gpu model run this script changing the first argument to reflect hardware name.
# Keep gpuowl.log

cd gpuowl-bench

# First GIMPS discovered prime
./gpuowl -prp 1398269 -iters 50000 -log 10000 -cpu $1
# Last known prime
./gpuowl -prp 82589933 -iters 50000 -log 10000 -cpu $1
# Largest SEL computed exponent
./gpuowl -prp 332252533 -iters 50000 -log 10000 -cpu $1
