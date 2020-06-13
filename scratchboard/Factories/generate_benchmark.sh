#!/bin/bash

# Generates a benchmark of 20 "default" Factories problems.

factories=1
dependencies=1
trucks=1
for i in {1..20}; do
    
    # Prefix one-digit values of i with a zero
    istr=$(echo $i|sed 's/^\([0-9]\)$/0\1/g')
    
    file=p$istr.hddl
    echo "(f,d,t) = ($factories,$dependencies,$trucks) => $file"
    
    python3 problem-generator.py --num_factories $factories --num_dependencies $dependencies --num_trucks $trucks $file
    
    # Increase dependencies until at maximum, then increase factories by one.
    # Trucks are increased whenever the number of factories hits a multiple of five.
    if [ $((dependencies+1)) -lt $factories ]; then
        dependencies=$((dependencies+1))
    else
        factories=$((factories+1))
        dependencies=1 #$((1+($factories-1)/2))
        trucks=$((1+(factories)/5))
    fi
    
done
