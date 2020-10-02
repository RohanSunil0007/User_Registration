#!/bin/bash -x
echo "Welcome to User Registration Form"

read -p "Enter First Name:" firstName;

pattern="^[A-Z]{1}[a-zA-Z]{2,}$";

if [[ $firstName =~ $pattern ]];
then
	echo "valid first name";
else
	echo "invalid first name";
fi
