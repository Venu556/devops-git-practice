#!/bin/bash

FRUITS=("APPLE","ORANGE","KIWI","BANANA")

echo "First fruit is: ${FRUITS[0]}"
echo "Second fruit is: ${FRUITS[1]}"
echo "Third fruit is: ${FRUITS[2]}"
echo "Fourth fruit is: ${FRUITS[3]}"

echo "First fruit is: ${FRUITS[@]}"