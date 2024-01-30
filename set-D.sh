#!/bin/bash


read -p "Enter the filename: " filename

if [[ -f "$filename" ]]; then
  echo "The file $filename exists."
  while read line;
  do
	  echo $line
  done < $filename
else
  echo "The file $filename does not exist."
fi

echo -e "\n\n\nEnter Your Salary"
read salary

vat() {
        tax=$( echo "scale=2; $1/100" | bc )
        echo "Your tax will be $( echo "scale=2; $tax*$salary" | bc )"
}

if [[ $salary -lt 30000 ]]
then
        echo "No TAXES"
elif [[ $salary -eq 30000 ]]
then
	vat 5
elif [[ $salary -gt 30000 && $salary -le 40000 ]]
then
        vat 10
elif [[ $salary -gt 60000 ]]
then
        vat 15
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
