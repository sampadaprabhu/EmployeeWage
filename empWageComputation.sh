#!/bin/bash
isPresent=1
isAbsent=0
echo "Welcome To Employee Wage"
random=$((RANDOM%2))
if (( $random == 1 ))
then
		echo "Employee is present"
else
	echo "Employee is Absent"
fi
