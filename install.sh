#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

# Sync submodule
git submodule init
git submodule sync
git submodule update --init --recursive

# Get npm modules
npm install .

# Get bower dependencies
bower install
