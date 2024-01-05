#!/bin/bash

transport=('car' 'train' 'bike' 'bus')

echo "${transport[@]}"

echo "${transport[1]}"

unset transport[1]

transport[1]='trainride'

#if we want to print out all element we would use echo "${transport[@]}". Note that @ means arguments and it needs to be wrapped like this []

#if we want to print out a specific element we can pick an index position bearing in mind that train is 1, we would echo echo "${transport[@]}"

#To change an element or delete it  we would use the unset utility. unset transport[1], for example

#Setting element to something else? Try -- transport[1]='trainride'
