#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <name> <age>"
    exit 1
fi

# Get the name and age from command line arguments
name="$1"
age="$2"

# Check if age is provided
if [ -z "$age" ]; then
    echo "Please provide the age as the second argument."
    exit 1
fi

# Check if age is under 18
if [ "$age" -lt 18 ]; then
    echo "$name, you are not eligible for work."
else
    # Ask for job information
    read -p "Hi $name! Please enter your job: " job
    echo "Thank you, $name! Your job is $job."
fi
