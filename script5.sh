#!/bin/bash

read -p "Tool you use: " TOOL
read -p "Meaning of freedom: " FREEDOM
read -p "What will you build: " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo "On $DATE, I believe that open source means $FREEDOM. Tools like $TOOL show how sharing knowledge empowers everyone. In future, I want to build $BUILD and share it freely with the world." > $OUTPUT

echo "Saved to $OUTPUT"
cat $OUTPUT
