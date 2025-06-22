alias b := build
alias bc := build-clean
alias c := clean
alias i := install
alias u := upgrade


default:
    @just --list


clean:
    @echo "{{BG_GREEN}}INFO:{{NORMAL}} Cleaning cache, node_modules, and other files."
    -rm -rf node_modules dist .cache public
    -rm -f package-lock.json yarn.lock pnpm-lock.yaml


install:
    @echo "{{BG_GREEN}}INFO:{{NORMAL}} Installing dependencies for Sonata, hold on tight!"
    npm install


build:
    @echo "{{BG_GREEN}}INFO:{{NORMAL}} Building Sonata, this might take a while."
    npm run build


build-clean: clean install
    @echo "{{BG_GREEN}}INFO:{{NORMAL}} Performing a full clean build of Sonata, this might take a while "
    npm run build


upgrade:
    @echo "{{BG_GREEN}}INFO:{{NORMAL}} Upgrading Sonata dependencies, please wait."
    ncu -u
    npm install

