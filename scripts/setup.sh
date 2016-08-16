#!/bin/sh
while IFS= read -r var;do source scripts/$var.sh;done < txt/src.txt
gem_info
lib_base
new_files
version_file
gem_spec
push_gem
