#!/bin/sh
while IFS= read -r var;do source scripts/ext/$var.sh;done < txt/src.txt
gem_info
lib_base
new_files
version_file
gem_spec
init_gemfile



## uncomment method below
## when you are ready to publish
# push_gem
