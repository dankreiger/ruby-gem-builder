#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

HEADER=$(printf "\n${RED}Ruby Gemspec Info: ${NC}")
NAME=$(printf "\n${CYAN}name: ${NC}")
SUMMARY=$(printf "\n${CYAN}summary: ${NC}")
AUTHORS=$(printf "\n${CYAN}author(s): ${NC}")
EMAIL=$(printf "\n${CYAN}email(s): ${NC}")
LICENSES=$(printf "\n${CYAN}license(s): ${NC}")
HOMEPAGE=$(printf "\n${CYAN}homepage: ${NC}")
