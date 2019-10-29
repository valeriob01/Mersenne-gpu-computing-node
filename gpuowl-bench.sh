
#!/bin/bash

set -o xtrace

# For each gpu model run this script changing the first argument to reflect hardware name;
# The loop number is the second argument; 

# Keep gpuowl.log
# For amdgpu-pro a change is required: -use NO_ASM
cd gpuowl-bench

COUNTER=0
while [  $COUNTER -lt $2 ]; do
echo GPU PRP benchmark loop $COUNTER is running now.
echo ***********************************************

# First GIMPS discovered prime
./gpuowl -prp 1398269 -iters 100000 -log 5000 -cpu $1 -results bench-1398269-$1.txt
# Last known prime
./gpuowl -prp 82589933 -iters 100000 -log 5000 -cpu $1 -results bench-82589933-$1.txt
# Largest SEL computed exponent
./gpuowl -prp 332412937 -iters 100000 -log 5000 -cpu $1 -results bench-332412937-$1.txt

let COUNTER=COUNTER+1 
done

