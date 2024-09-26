#!/bin/bash

# a. Set the frequency of the BBB to 600 MHz
echo "Setting BBB frequency to 600 MHz..."
echo 600000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed

# b. Display information about the CPU
echo "Displaying CPU information..."
cpufreq-info

# c. Create a variable named location and assign it the value: /home/debian
location="/home/debian"

# d. Echo the value of the variable location
echo "The location is: $location"

# e. Create a variable named items, which gets the number of items in the current working directory
items=$(ls -1 | wc -l)
echo "Number of items in the current directory: $items"
