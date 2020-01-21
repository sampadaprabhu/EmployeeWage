#!/bin/bash
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4
isFullTimePresent=1
isPartTimePresent=2
isAbsent=0
echo "Welcome To Employee Wage"
random=$((RANDOM%3))
case $random in
				$isFullTimePresent)
						echo "Full Time Employee is Present"
						Daily_Employee_Wage=$(( $WAGE_PER_HOUR * $FULL_DAY_HOUR ))
						echo "Daily Employee Wage is: $Daily_Employee_Wage"
						;;
				$isPartTimePresent)
						echo "Part Time Employee is Present"
						Part_Time_Employee_Daily_Wage=$(( $WAGE_PER_HOUR * $PART_TIME_HOUR ))
						echo "Part Time Employee Daily Wage is: $Part_Time_Employee_Daily_Wage"
						;;
				$isAbsent)
						echo "Employee is Absent"
esac

