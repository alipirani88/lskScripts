#!/bin/bash

set -e

# Find all unit tests under this directory
# and simply run them with -e and -x
executables=$(find $(dirname $0)/unittests -maxdepth 1 -type f)
for exe in $executables; do
  $exe
  if [ $? -gt 0 ]; then
    exit 1
  fi
done;

exit 0
