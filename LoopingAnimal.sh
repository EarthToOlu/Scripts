#!/bin/bash

# Here is your Array and they contain these words

words=("man" "bear" "pig" "dog" "cat" "sheep")

# Loop through the array and display each word on a separate line

for word in "${words[@]}"; do
    echo $word
done

