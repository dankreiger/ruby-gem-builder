#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color


NAME_MESSAGE="${CYAN}Enter the name of your ruby gem and press [ENTER]: ${NC}"
SUMMARY_MESSAGE=$(printf "\n${CYAN}Enter a brief summary about your ruby gem and press [ENTER]: ${NC}")
AUTHOR_MESSAGE=$(printf "\n${CYAN}Enter the author(s) of your ruby gem and press [ENTER]: ${NC}")
