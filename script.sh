#!/bin/bash

usage () { 
    echo "$PROGNAME: usage: $PROGNAME [-f files | -i]" 
    return 
} 
# Initialize variables to store the arguments
# commit message
echo "Please enter commit mesaage"
read commit_message
echo "Please enter filenames you want to add or . to add all files in current directory"
read files

function git_add_commit(){
    current_branch=$(git rev-parse --abbrev-ref HEAD)

    if [ "$files" = "." ]; then
    git add .
    else
        git add  "$files"
    fi
    echo "files added"
    git commit -m"$commit_message"

    git push 

    }


git_add_commit



    


