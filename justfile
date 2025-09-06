alias b := build
alias bc := build-clean
alias c := clean
alias i := install
alias u := upgrade
alias cm := commit
alias vp := validate_plugins

SCRIPT_DIR := "scripts"

# NOTE: List all of the available commands to the user.
default:
    @just --list

# NOTE: Clean up node_modules, lock-files, and other build artifacts.
[group('clean')]
[confirm('Are you sure you want to clean all build artifacts? This action cannot be undone.')]
clean *args:
    @bash {{SCRIPT_DIR}}/clean.sh "{{args}}"

# NOTE: Install all dependencies for sonata.
[group('setup')]
install arg="--legacy-peer-deps":
    @bash {{SCRIPT_DIR}}/install.sh "{{arg}}"

# NOTE: Build the sonata project from source.
[group('setup')]
build:
    @bash {{SCRIPT_DIR}}/build.sh

# NOTE: Clean up artifacts, then build the sonata project from source.
[group('setup')]
[confirm('Are you sure you want to clean all build artifacts and rebuild the project? This action cannot be undone.')]
build-clean: clean install
    @bash {{SCRIPT_DIR}}/build.sh

# NOTE: Upgrade all of the sonata dependencies to their latest versions.
[group('setup')]
[confirm('Are you sure you want to upgrade all dependencies to their latest versions? This action cannot be undone.')]
upgrade:
    ncu -u
    npm install

# NOTE: Commit all changes to git with a custom commit message and optional flags (flag set: -m).
[group('dev')]
commit msg *flags:
    git add .
    git commit "{{flags}}" -m "{{msg}}"


# NOTE: Validate that all Obsidian plugins from plugins.json are installed.
[group('dev')]
validate_plugins:
    @bash - {{SCRIPT_DIR}}/install_obsp.sh
