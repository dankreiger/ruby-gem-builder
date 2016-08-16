#!/bin/sh
while IFS= read -r var;do source scripts/$var.sh;done < src.txt
gem_info
lib_base
new_files
gem_spec
