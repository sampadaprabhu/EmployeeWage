#!/bin/bash
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
echo "Welcome To Employee Wage"
random=$((RANDOM%2))
if (( $random == 1 ))
then
		echo "Employee is present"
		Daily_Employee_Wage=$(( $WAGE_PER_HOUR * $FULL_DAY_HOUR ))
		echo "Daily Employee Wage is: $Daily_Employee_Wage"
else
	echo "Employee is Absent"
fi

