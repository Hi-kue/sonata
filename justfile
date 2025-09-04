alias b := build
alias bc := build-clean
alias c := clean
alias i := install
alias u := upgrade

SCRIPT_DIR := "scripts"

# NOTE: List all of the available commands to the user.
default:
    @just --list

# NOTE: Clean up node_modules, lock-files, and other build artifacts.
clean:
    @echo "{{BG_GREEN}}INFO:{{NORMAL}} Cleaning cache, node_modules, and other files."
    -rm -rf node_modules dist .cache public
    -rm -f package-lock.json yarn.lock pnpm-lock.yaml


# NOTE: Install all dependencies for sonata.
install arg="--legacy-peer-deps":
    @bash {{SCRIPT_DIR}}/install.sh "{{arg}}"

# NOTE: Build the sonata project from source.
build:
    @bash {{SCRIPT_DIR}}/build.sh

# NOTE: Clean up artifacts, then build the sonata project from source.
build-clean: clean install
    @bash {{SCRIPT_DIR}}/build.sh

# NOTE: Upgrade all of the sonata dependencies to their latest versions.
upgrade:
    ncu -u
    npm install
