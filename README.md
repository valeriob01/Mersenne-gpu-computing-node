# GPU-Computing-Node Installation

This script builds a complete Mersenne GPU Computing Node, it installs all the dependencies needed to run Mersenne GPU computing applications, then installs and compile the applications.

- ROCm: Radeon Open Compute driver

- Mfakto: Mersenne trial factoring

- Primetools: work fetch/submit scripts and other utilities

- GpuOwl: Mersenne PRP test


## Additional steps needed to work as a regular user:

1. Copy /root/mfakto, /root/primetools and /root/gpuowl to your home directory, command: cp -r \<orig_directory> \<dest_directory>;
2. Change ownership of /home/\<username>/mfakto, /home/\<username>/primetools and /home/\<username>/gpuowl to your username, so that reading and saving files works, command: chown -R \<username>:\<groupname> \<directory>
3. Add yourself to the video group, command: usermod -a -G video \<username>
