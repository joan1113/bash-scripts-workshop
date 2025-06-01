#!/bin/bash

read -p 'Introduce directory or file: ' input

if [[ ! -e $input ]]; then
        echo "The file or directory you entered doesn't exist"
        exit 1
fi

read -p 'Intro
