#!/bin/bash

read -p "this operation will delete all files in ./include/nagisa, ok?[y/N] " ok
if [[ "$ok" != "y" && "$ok" != "Y" ]]; then
    exit 0
fi

rm -rf ./include/nagisa
mkdir ./include/nagisa
python ./tools/create_link/main.py ./include/nagisa ./libs
