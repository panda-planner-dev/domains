#!/bin/bash


for p in p{01..20}.hddl; do

    while read -r line; do
    
        if echo $line|grep -qE "do_cocktail_in_shot shot[0-9]+ cocktail"; then
            line=`echo $line|sed 's/do_cocktail_in_shot/do_cocktail_in_shot1/'`
        elif echo $line|grep -qE "do_cocktail_in_shot shot[0-9]+ ingredient"; then
            line=`echo $line|sed 's/do_cocktail_in_shot/do_cocktail_in_shot2/'`
        fi
        
        echo $line >> p_new
    
    done < $p
    
    mv p_new $p

done
