#!/bin/bash

# subtractMachine.sh
# This script takes two command line arguments, subtracts the smaller number from the larger,
# and prints the difference. It then counts down from the difference to 1, printing each count.
# Arguments:
#   $1 - First number (integer)
#   $2 - Second number (integer)
# Example invocation:
#   ./subtractMachine.sh 10 3

# Check if exactly two arguments are provided
if [ "$#" -ne 2 ]; then
  echo "Error: Two arguments are required."
  echo "Usage: $0 num1 num2"
  exit 1
fi

# Assign arguments to variables
num1=$1
num2=$2

# Check if the numbers are equal
if [ "$num1" -eq "$num2" ]; then
  echo "Error: The numbers cannot be equal."
  exit 1
fi

# Calculate the difference
if [ "$num1" -gt "$num2" ]; then
  difference=$((num1 - num2))
else
  difference=$((num2 - num1))
fi

# Print the difference
echo "The difference is: $difference"

# Countdown from the difference to 1
for (( i=difference; i>=1; i-- )); do
  echo "$i"
done
