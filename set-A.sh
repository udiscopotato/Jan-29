#!/bin/bash

echo "Enter First Number"
read num1
echo "Enter Second Number"
read num2
echo "Enter Mathmatical operator  i.e.  +, -, *, /"
read sym

if [[ $sym == '+' ]]
then
        echo $(( $num1 + $num2 ))
elif [[ $sym == '-' ]]
then
        echo $(( $num1 - $num2 ))
elif [[ $sym == '*' ]]
then
        echo $(( $num1 * $num2 ))
elif [[ $sym == '/' ]]
	echo $(( $num1 / $num2 ))
else
	echo "Enter valid Operator"
fi

echo -e "\n\n\nEnter Your Salary"
read salary

vat() {
	tax=$( echo "scale=2; $1/100" | bc )
        echo "Your tax will be $( echo "scale=2; $tax*$salary" | bc )"
}

if [[ $salary -lt 20000 ]]
then
	echo "No TAXES"
elif [[ $salary -eq 20000 ]]
	vat 2
elif [[ $salary -gt 20000 && $salary -le 40000 ]]
then
	vat 5
elif [[ $salary -gt 40000 ]]
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
elif [[ $age -gt 60 ]]
then
	echo "Oldage"
else
	echo "Enter valid number"
fi
