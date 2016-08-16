#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color


NAME=$(printf "\n${CYAN}Enter the name of your ruby gem and press [ENTER]: ${NC}")
SUMMARY=$(printf "\n${CYAN}Enter a brief summary about your ruby gem and press [ENTER]: ${NC}")
AUTHORS=$(printf "\n${CYAN}Enter the author(s) of your ruby gem and press [ENTER]: ${NC}")
EMAIL=$(printf "\n${CYAN}Enter the email address(es) associated with your ruby gem and press [ENTER]: ${NC}")
LICENSES=$(printf "\n${CYAN}Enter any license(s) associated with your ruby gem and press [ENTER]: ${NC}")
HOMEPAGE=$(printf "\n${CYAN}Enter the website homepage for your ruby gem and press [ENTER]: ${NC}")
