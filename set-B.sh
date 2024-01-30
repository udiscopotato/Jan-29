#!/bin/bash

echo "Enter a character"
read char

vowel() {
	echo "Character is a Vowel"
}

case $char in
	'a')
		vowel;;
	'e')
		vowel;;
	'i')
		vowel;;
	'o')
		vowel;;
	'u')
		vowel;;
	*)
		echo "Not a Vowel";;
esac

echo -e "\n\n\nEnter Your Salary"
read salary

vat() {
        tax=$( echo "scale=2; $1/100" | bc )
        echo "Your tax will be $( echo "scale=2; $tax*$salary" | bc )"
}

if [[ $salary -le 10000 ]]
then
        echo "No TAXES"
elif [[ $salary -gt 10000 && $salary -le 25000 ]]
then
        vat 5
elif [[ $salary -gt 25000 ]]
then
        vat 10
else
        echo "Enter valid Input"
fi

echo -e "\n\n\nEnter Your Age"
read age

if [[ $age -lt 13 ]]
then
        echo "Child"
elif [[ $age -ge 13 && $age -le 19 ]]
then
        echo "Teenager"
elif [[ $age -ge 20 ]]
then
        echo "Adult"
fi
