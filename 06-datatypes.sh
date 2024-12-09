#!/bin/bash
number1=$1
number2=$2
sum=$(($number1+$number2))
echo "Total:: $sum"

echo "How many args passed:: $#"
echo "all args passed:: $@"