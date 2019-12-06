all: mfakto primetools gpuowl

mfakto:
  git clone https://github.com/preda/mfakto
  cd mfakto/src
  make

primetools:
  git clone https://github.com/teknohog/primetools

gpuowl:
  git clone https://github.com/preda/gpuowl
  cd gpuowl
  make
