#!/bin/bash

set -o xtrace

find . -name '*.owl' -a -mtime -$1 -exec rm -v {} + | tee -a ./removed_checkpoints.log
