#!/bin/sh

dot_file=$1

if [ ${#dot_file} -eq 0 ]; then
    echo "./dot.sh file"
    exit 1;
fi

png_file=${dot_file%dot}png
svg_file=${dot_file%dot}svg


dot -Tpng -Kdot -Gcharset=utf-8 ./$dot_file -o $png_file
#dot -Tsvg -Kdot -Gcharset=utf-8 ./$dot_file -o $svg_file 
