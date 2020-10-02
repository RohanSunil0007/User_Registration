#!/bin/bash -x
echo "Welcome to User Registration Form"

read -p "Enter First Name:" firstName
read -p "Enter Last Name:" lastName
read -p "Enter E-mail:" email

pattern="^[A-Z]{1}[a-zA-Z]{2,}$"
pattern1="^[A-Z]{1}[a-z A-Z]{2,}$"
pattern2="^[0-9a-zA-z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-z]+.[a-zA-Z]{2,4}([.][a-zA-z]{2,3})*$"
if [[ $firstName =~ $pattern ]]
then
	echo "Valid first name"
else
	echo "Invalid first name !!!"
fi

if [[ $lastName =~ $pattern1 ]];
then
	echo "Valid last name";
else
	echo "Invalid last name!!!";
fi
if [[ $email =~ $pattern2 ]];
then
	echo "valid email";
else
	echo "Invalid email!!!";
fi
