#!/bin/bash
NAME="siva"

echo "The name is $NAME"

echo "The name is ${NAME/s/S}"

echo "The name is ${NAME:0:2}"