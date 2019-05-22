#!/bin/bash

set -o xtrace

find $1 -name '*.owl' -a -mtime -$2 -exec rm -v {} + | tee -a ./removed_checkpoints.log
