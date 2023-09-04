#!/bin/bash

euid="$EUID"

if [ $euid = 0]; then
    script_source="script.sh"
    script_name="git_automation"
    dir="/usr/local/bin"

    cp "$script_source" "$dir/$script_name"
    chmod u+x  "$dir/$script_name"
else
    echo "Script must be run with sudo or as a superuser"
    exit 1

echo "Script installed succefully."

