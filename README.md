# Mersenne GPU-Computing-Node Installation Procedure

## Step 1: GPU Drivers installation
### ROCm
Run make -f install-rocm.Makefile

### amdgpu-pro
The Ubuntu system is needed, for live-server add multiverse repository before installing the driver.

### Nvidia driver
Install nvidia-driver, it will also install opencl.

## Step 2: prep-sys.sh
The script prep-sys.sh has been created to prepare the system before starting the installation. This script installs very basic pieces of software needed to parse the makefile, C++ compiler, libraries, and necessary system utilities.
- git
- make
- ntp
- tmux
- lm-sensors
- g++
- libgmp-dev

## Step 3: Program installation
New version of the script in Makefile style. Invoke with "make -f ./Mersenne-gpu.Makefile \<section-name>" when logged in as root. The makefile is made for manual installation and requires user confirmation at every installation step. If the user wants to automate the process, they have to add the -y option to apt, but this is not recommended as if some step fails, subsequent steps may also fail. The make command should however warn when an error occurs.

The section-name can be: mfakto, primetools, gpuowl.

This Makefile builds a Mersenne GPU Computing Node, it installs the programs to do Mersenne GPU computing.

- Mfakto: Mersenne trial factoring

- Primetools: work fetch/submit scripts and other utilities

- GpuOwl: Mersenne PRP test

# Benchmarking: prep-bench.sh and gpuowl-bench.sh
The prep-bench.sh script prepares the directory for storing benchmarks. The gpuowl-bench.sh script runs the actual benchmarks, see the script for parameters explanation. The first command-line argument should be the gpu model name and/or number.
