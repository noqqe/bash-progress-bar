#!/bin/bash

MAX=${1:-11}
TIME="${2:-0.08}"
TL="${3:-[}"
S="${4:-#####}"
TR="${5:-]}"

while true; do
    R=0
    while [ $R -lt $MAX ]; do 
        RSP=$(($MAX - $R ))
        if [ $RSP -gt $MAX ]; then RSP=$MAX ; fi 
        LSP=$(($MAX - ${RSP}))
        echo -n "$TL"
        for l in $(seq 1 $LSP); do
            echo -n " "
        done
        echo -n $S
        for r in $(seq 1 $RSP); do
            echo -n " "
        done; echo -ne "$TR\r"
        sleep $TIME ; ((R++))
    done
    while [ $R -ne 0 ]; do
        RSP=$(($MAX - $R ))
        if [ $RSP -ge $MAX ]; then RSP=$MAX ; fi 
        LSP=$(($R + 0 )) 
        if [ $LSP -lt 0 ]; then LSP=0 ; fi 
        echo -n "$TL"
        for l in $(seq 1 $R); do
            echo -n " "
        done
        echo -n $S
        for r in $(seq 1 $RSP); do
            echo -n " "
        done; echo -ne "$TR\r"
        sleep $TIME; ((R--))
    done
done
