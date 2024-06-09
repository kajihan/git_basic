#!/bin/bash

# Request the initial counter value from the user
read -p "Enter the initial counter value: " start_counter

# Loop that subtracts 1 from the counter until it reaches zero
while [ $start_counter -gt 0 ]; do
    echo $start_counter
    ((start_counter--))
done

echo "Counter has reached zero."