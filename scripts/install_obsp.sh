#!/usr/bin/env bash

# README
# *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
# This bash script is responsible for installing
# Obsidian plugins and perferred configurations for
# anyone using Obsidian alongside Sonata. This is 
# an optional script, and if you do not use Obsidian,
# or have your own preferred plugins/configurations,
# you do not need to run this script by any means.
#
# Given this, you must also have a `.obsidian` folder
# in your Sonata project root directory for this script
# to work properly.
#
# Current File: install_obsp.sh
# *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR/config.sh"


PLUGINS_TO_INSTALL_FILE="$(pwd)/plugins.json"
PLUGINS_PATH="$(pwd)/.obsidian"

start() {
    if [[ ! -d "$PLUGINS_PATH" ]]; then
        error "The .obsidian folder does not exist in the current directory: $(pwd)"
        exit 1
    else
        success "The .obsidian folder exists, proceeding with plugin validation."
        validate_obs_plugins
    fi
}

# NOTE: OBS = Obsidian not OBS Studio!
validate_obs_plugins() {
    local MISSING_PLUGINS=()
    local COMMUNITY_PLUGINS=()

    if [[ ! -f "$PLUGINS_TO_INSTALL_FILE" ]]; then
        error "The 'plugins.json' file does not exist at the specified path: $PLUGINS_TO_INSTALL_FILE"
        exit 1
    fi

    if ! command -v jq &> /dev/null; then
        error "'jq' is not installed. Please install 'jq' to parse JSON files."
        exit 1
    fi

    COMMUNITY_PLUGINS=$(jq -r '.community_plugins[]' "$PLUGINS_TO_INSTALL_FILE")

    if [[ -z "$COMMUNITY_PLUGINS" ]]; then
        info "There are no community plugins to install, skipping installation."
        return
    fi

    for plugin in $COMMUNITY_PLUGINS; do
        info "Checking if the following plugin is installed: $plugin"
        if [[ -d "$PLUGINS_PATH/plugins/$plugin" ]]; then
            success "[FOUND] Plugin '$plugin' is installed."
            sleep 1
        else
            error "[MISSING] Plugin '$plugin' is not installed."
            MISSING_PLUGINS+=("$plugin")
            sleep 1.5
        fi
    done

    if [ ${#MISSING_PLUGINS[@]} -ne 0 ]; then
        error "The following plugins are missing and need to be installed manually via Obsidian's Community Plugins interface:"
        for missing_plugin in "${MISSING_PLUGINS[@]}"; do
            echo " - $missing_plugin"
        done
        exit 1
    else
        info "All plugins from 'plugins.json' are installed, no further actions required."
    fi
}

start
