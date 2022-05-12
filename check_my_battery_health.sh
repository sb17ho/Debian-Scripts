#!/bin/bash
upowerList=$(upower -e)
i=1 #Counter

echo "Credit: Makes use of command upower"
echo "Select your choice to few battery status"

# Display value to user
for vals in $upowerList;do
	echo "${i}) ${vals}" 
	((i++))
done 

my_list=()

# Data output data to array
for vals in $upowerList;do
	my_list+=($vals)
done

# Read Input from User
read choice

# Execute the command
upower -i ${my_list[choice - 1]}
