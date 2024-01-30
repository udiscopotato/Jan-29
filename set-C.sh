#!/bin/bash

username="admin"
password="testyantra123"

read -p "Enter username: " input_username
read -sp "Enter password: " input_password
echo -e "\n"

if [[ "$input_username" == "$username" ]] && [[ "$input_password" == "$password" ]]; then
  echo "Access granted."
else
  echo "Access denied."
fi

echo -e "\n\n\nEnter Your Salary"
read salary

vat() {
        tax=$( echo "scale=2; $1/100" | bc )
        echo "Your tax will be $( echo "scale=2; $tax*$salary" | bc )"
}

if [[ $salary -le 15000 ]]
then
        echo "No TAXES"
elif [[ $salary -gt 15000 && $salary -le 30000 ]]
then
        vat 5
elif [[ $salary -gt 30000 ]]
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
