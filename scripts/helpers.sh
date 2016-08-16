#!/bin/sh
read_info() { printf $YELLOW;read $1;printf $NC; }
list_files() { find . -not -path "*.txt*" -not -path "*scripts*" -not -path "*.sh*" -not -path "*scripts*" -not -path '*/.*'; }
capitalize_str="$(tr '[:lower:]' '[:upper:]' <<< ${str:0:1})${str:1}"
