#!/bin/bash

Process() {
    for file in $1/*
    do
        if [ -d "$file" ]
            then
            Process "$file"
        elif [ -f "$file" ]
            then
            cp "$file" "$output/"
        fi
    done
}


echo "Enter input file name:"
read input

echo "Enter output file name:"
read output

Process $input


