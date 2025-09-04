#!/usr/bin/env bash

set -e

if command -v tput >/dev/null 2>&1; then
    COLOR_RESET=$(tput sgr0)
    COLOR_RED=$(tput setaf 1)
    COLOR_GREEN=$(tput setaf 2)
    COLOR_YELLOW=$(tput setaf 3)
    COLOR_BLUE=$(tput setaf 4)
    COLOR_MAGENTA=$(tput setaf 5)
    COLOR_CYAN=$(tput setaf 6)
    COLOR_WHITE=$(tput setaf 7)
else
    COLOR_RESET="\033[0m"
    COLOR_RED="\033[0;31m"
    COLOR_GREEN="\033[0;32m"
    COLOR_YELLOW="\033[0;33m"
    COLOR_BLUE="\033[0;34m"
    COLOR_MAGENTA="\033[0;35m"
    COLOR_CYAN="\033[0;36m"
    COLOR_WHITE="\033[0;37m"
fi

PREFIX_INFO="${COLOR_BLUE}[INFO]${COLOR_RESET}"
PREFIX_WARN="${COLOR_YELLOW}[WARN]${COLOR_RESET}"
PREFIX_ERROR="${COLOR_RED}[ERROR]${COLOR_RESET}"
PREFIX_SUCCESS="${COLOR_GREEN}[SUCCESS]${COLOR_RESET}"
PREFIX_DEBUG="${COLOR_MAGENTA}[DEBUG]${COLOR_RESET}"

_get_current_timestamp() {
    date "+%Y-%m-%d %H:%M:%S"
}

info() {
    echo "${PREFIX_INFO} [$(_get_current_timestamp)] ${1}"
}

warn() {
    echo "${PREFIX_WARN} [$(_get_current_timestamp)] ${COLOR_YELLOW}${1}${COLOR_RESET}" >&2
}

error() {
    echo "${PREFIX_ERROR} [$(_get_current_timestamp)] ${COLOR_RED}${1}${COLOR_RESET}" >&2
}

success() {
    echo "${PREFIX_SUCCESS} [$(_get_current_timestamp)] ${COLOR_GREEN}${1}${COLOR_RESET}"
}

debug() {
    echo "${PREFIX_DEBUG} [$(_get_current_timestamp)] ${COLOR_MAGENTA}${1}${COLOR_RESET}"
}
