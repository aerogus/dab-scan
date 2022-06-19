#!/usr/bin/env bash

# Boucle des gains
for GAIN in {5..100..5}
do
    # 3 mesures par gain
    for i in {1..3}
    do
        ./scan.sh $GAIN
    done
done

