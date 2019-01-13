# GPU-Computing-Node Installation

New version of the script in Makefile style. Invoke with "make -f ./Mersenne-gpu.Makefile" when logged in as root. The makefile is made for manual installation and requires user confirmation at every installation step. If the user wants to automate the process, they have to add the -y option to apt, but this is not recommended as if some step fails, subsequent steps may also fail. The make command should however warn when an error occurs.


This Makefile builds a complete Mersenne GPU Computing Node, it installs all the dependencies needed to run Mersenne GPU computing applications, then installs and compile the applications.

- Utilities: NTP, tmux, lm-sensors

- Dependencies: libgmp-dev

- ROCm: Radeon Open Compute driver

- Mfakto: Mersenne trial factoring

- Primetools: work fetch/submit scripts and other utilities

- GpuOwl: Mersenne PRP test


## Additional steps needed to work as a regular user:

1. Copy /root/mfakto, /root/primetools and /root/gpuowl to your home directory, command: cp -r \<orig_directory> \<dest_directory>;
2. Change ownership of /home/\<username>/mfakto, /home/\<username>/primetools and /home/\<username>/gpuowl to your username, so that reading and saving files works, command: chown -R \<username>:\<groupname> \<directory>
3. Add yourself to the video group, command: usermod -a -G video \<username>
