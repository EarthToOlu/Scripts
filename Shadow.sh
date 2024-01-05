#!/bin/bash

# Checking if the file /etc/shadow exists

if [ -e "/etc/shadow" ]; then
    echo "Shadow passwords are enabled."

    # Checking if you have write permissions on /etc/shadow

    if [ -w "/etc/shadow" ]; then
        echo "You have permissions to edit /etc/shadow."
    else
       echo "You do NOT have permissions to edit /etc/shadow."
    fi
else
    echo "The file /etc/shadow does not exist."

fi


