# Mersenne GPU-Computing-Node Installation

The script prep-sys.sh has been created to prepare the system before starting the installation. This script installs very basic pieces of software needed to parse the makefile.
- make
- git

New version of the script in Makefile style. Invoke with "make -f ./Mersenne-gpu.Makefile \<section-name>" when logged in as root. The makefile is made for manual installation and requires user confirmation at every installation step. If the user wants to automate the process, they have to add the -y option to apt, but this is not recommended as if some step fails, subsequent steps may also fail. The make command should however warn when an error occurs.

The section-name can be: utilities, dependencies, rocm, mfakto, primetools, gpuowl.

This Makefile builds a complete Mersenne GPU Computing Node, it installs all the dependencies needed to run Mersenne GPU computing applications, then installs and compile the applications.

- Deps: libgmp-dev

- ROCm: Radeon Open Compute driver

- Mfakto: Mersenne trial factoring

- Primetools: work fetch/submit scripts and other utilities

- GpuOwl: Mersenne PRP test


## Additional steps needed to work as a regular user:

1. Copy /root/mfakto, /root/primetools and /root/gpuowl to your home directory, command: cp -r \<orig_directory> \<dest_directory>;
2. Change ownership of /home/\<username>/mfakto, /home/\<username>/primetools and /home/\<username>/gpuowl to your username, so that reading and saving files works, command: chown -R \<username>:\<groupname> \<directory>
3. Add yourself to the video group, command: usermod -a -G video \<username>

# Installation of amdgpu-pro
The Ubuntu system is needed, for live-server add multiverse repository before installing the driver.

# Benchmarking

For benchmarking I have a directory named gpuowl-bench, just call the gpuowl-bench.sh Bash script. It assumes that you have a directory named "gpuowl-bench". The first command-line argument should be the gpu model name and/or number.
