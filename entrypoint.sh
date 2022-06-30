#!/bin/bash
set -e

help() {
    sslyze -h
}

if [ "$#" -eq 0 ]; then
    help
else
    case $1 in
        'sh' | 'bash' | 'shell')
            shift
            exec bash
        ;;
        'help')
            help
        ;;
        'version')
            sslyze --version
        ;;
        *)
            sslyze $@
    esac
fi
