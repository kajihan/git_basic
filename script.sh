#!/bin/bash

read -p "Enter the initial counter value: " start_counter

while [ $start_counter -gt 0 ]; do
    echo $start_counter
    ((start_counter--))
done

echo "Counter has reached zero."