#!/bin/bash

for i in /etc/rc.*;do
    echo $i
done

for i in {1..5};do
    echo "The number is $i"
done


while read -r line;do
    echo "$line"
done < hello.txt