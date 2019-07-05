#!/bin/bash

set -o xtrace

rm $1.owl
mv $1-prev.owl $1.owl
