#!/bin/bash

set -o xtrace

# rename the file for later analysis
mv $1.owl $1.bad-owl
mv $1-prev.owl $1.owl
