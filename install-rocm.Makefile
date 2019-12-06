all: rocm

rocm:
  apt update
  apt dist-upgrade
  apt install libnuma-dev
  wget -qO - http://repo.radeon.com/rocm/apt/debian/rocm.gpg.key | apt-key add -
  echo 'deb [arch=amd64] http://repo.radeon.com/rocm/apt/debian/ xenial main' | tee /etc/apt/sources.list.d/rocm.list
  apt update
  apt install rock-dkms rocm-opencl rocm-opencl-dev rocm-smi
  echo 'SUBSYSTEM=="kfd", KERNEL=="kfd", TAG+="uaccess", GROUP="video"' | tee /etc/udev/rules.d/70-kfd.rules
  /usr/sbin/usermod -a -G video root
  echo 'ADD_EXTRA_GROUPS=1' | tee -a /etc/adduser.conf
  echo 'EXTRA_GROUPS=video' | tee -a /etc/adduser.conf
  echo 'export LD_LIBRARY_PATH=/opt/rocm/opencl/lib/x86_64:/opt/rocm/hsa/lib:$$LD_LIBRARY_PATH' | tee -a /etc/profile.d/rocm.sh
  echo 'export PATH=$$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/opt/rocm/bin:/opt/rocm/profiler/bin:/opt/rocm/opencl/bin/x86_64' | tee -a /etc/profile.d/rocm.sh
