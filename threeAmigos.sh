#!/bin/bash

# threeAmigos.sh
# This script takes 4 command line arguments, sums the first three numbers,
# and then executes subtractMachine.sh with the sum and the fourth argument.
# Usage: ./threeAmigos.sh arg1 arg2 arg3 arg4
# Example: ./threeAmigos.sh 5 10 15 20

# Check if the correct number of arguments is provided
if [ "$#" -ne 4 ]; then
  echo "Usage: $0 arg1 arg2 arg3 arg4"
  exit 1
fi

# Sum the first three arguments
sum=$(( $1 + $2 + $3 ))

# Execute subtractMachine.sh with the sum and the fourth argument
./subtractMachine.sh $sum $4
