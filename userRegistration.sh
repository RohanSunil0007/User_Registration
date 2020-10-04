#!/bin/bash
echo "Welcome to User Registration Form"

read -p "Enter First Name:" firstName
read -p "Enter Last Name:" lastName
read -p "Enter E-mail:" email
read -p "Enter Mobile no:" mobileNumber
read -p "Enter Password:" password

pattern="^[A-Z]{1}[a-zA-Z]{2,}$"
pattern1="^[A-Z]{1}[a-z A-Z]{2,}$"
pattern2="^[0-9a-zA-z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-z]+.[a-zA-Z]{2,4}([.][a-zA-z]{2,3})*$"
pattern3="^([9]{1}[1]{1}) [0-9]{10}$"
pattern4="^[A-Z]{1,}[a-zA-Z0-9]{7,}[0-9]{1,}"
#FirstName
if [[ $firstName =~ $pattern ]]
then
	echo "Valid first name"
else
	echo "Invalid first name !!!"
fi

#LastName
if [[ $lastName =~ $pattern1 ]];
then
	echo "Valid last name";
else
	echo "Invalid last name!!!";
fi

#Email
if [[ $email =~ $pattern2 ]];
then
	echo "valid email";
else
	echo "Invalid email!!!";
fi

#Mobile Number
if [[ $mobileNumber =~ $pattern3 ]];
then
	echo "valid mobile number";
else
	echo "Invalid mobile number!!!";
fi

#Password
if [[ $password =~ $pattern4 ]];
then
	echo "valid password";
else
	echo "Invalid password!!!";
fi
