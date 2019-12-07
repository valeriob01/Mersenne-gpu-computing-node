#!/bin/bash
# Install fundamental packages before starting computing node installation
set -o xtrace

apt install git make ntp tmux lm-sensors g++ libgmp-dev
