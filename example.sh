#!/bin/bash
NAME="siva"

echo "The name is $NAME"

echo "The name is ${NAME/s/S}"

echo "The name is ${NAME:0:2}"

echo "The name is ${NAME::2}"

echo "The name is ${NAME::-1}"

echo "The name is ${NAME:(-1)}"

echo "The name is ${NAME:(-2):1}"

echo "The name is ${NAME:-Rama}"