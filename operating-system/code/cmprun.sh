#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <sourcefile.c>"
    exit 1
fi

sourcefile="$1"
filename=$(basename -- "$sourcefile")
filename_noext="${filename%.*}"
objdir="../obj"

if [ ! -d "$objdir" ]; then
    echo "Object directory '$objdir' does not exist. Creating it now."
    mkdir -p "$objdir"
fi

if [ ! -f "$sourcefile" ]; then
    echo "Error: Source file '$sourcefile' does not exist."
    exit 1
fi

executable="$objdir/${filename_noext}"

gcc -o "$executable" "$sourcefile"

if [ $? -eq 0 ]; then
    ./"$executable"
else
    echo "Error: Compilation failed."
    exit 1
fi
