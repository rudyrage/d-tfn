#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <sourcefile.c> [-n]"
    exit 1
fi

echo -e "Name: <your name>\n"

sourcefile="$1"
filename=$(basename -- "$sourcefile")
filename_noext="${filename%.*}"
objdir="../obj"
execute=true 

if [ "$#" -eq 2 ] && [ "$2" == "-n" ]; then
    execute=false
fi

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
    if [ "$execute" = true ]; then
        ./"$executable"
    else
        echo "Compilation successful"
    fi
else
    echo "Error: Compilation failed."
    exit 1
fi
