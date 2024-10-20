#!/bin/bash 
function process_arguments() {
    # Output script name
    echo "Script Name: $0"

    # Check argument count
    if [[ $# -lt 1 || $# -gt 6 ]]; then
        echo "Invalid number of arguments. Please provide 1 to 6 arguments."
        return 1
    fi

    # Check if arguments are strings
    for arg in "$@"; do
        if [[ ! "$arg" =~ ^[[:alpha:]]+$ ]]; then
            echo "You must enter characters only."
            return 1
        fi
    done

    # Create filename by concatenating arguments
    filename=$(echo "$@" | tr ' ' '_')

    # Create file
    touch "$filename.txt"
    if [[ $? -eq 0 ]]; then
        echo "File $filename.txt created successfully."
    else
        echo "Error creating file."
    fi
}

# Get arguments from user
while true; do
    read -p "Enter arguments (1-6): " arguments
    process_arguments "$@"
    if [[ $? -eq 0 ]]; then
        break
    fi
done