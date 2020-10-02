#!/bin/bash -x
echo "Welcome to User Registration Form"

read -p "Enter First Name:" firstName
read -p "Enter Last Name:" lastName

pattern="^[A-Z]{1}[a-zA-Z]{2,}$"
pattern1="^[A-Z]{1}[a-z A-Z]{2,}$"

if [[ $firstName =~ $pattern ]]
then
	echo "Valid first name"
else
	echo "Invalid first name !!!"
fi

if [[ $lastName =~ $pattern ]];
then
	echo "Valid last name";
else
	echo "Invalid last name!!!";
fi
