#!/bin/bash
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4
isFullTimePresent=1
isPartTimePresent=2
isAbsent=0
fullTime=0
partTime=0
echo "Welcome To Employee Wage"
for (( i=0; i<20; i++ ))
do
	random=$((RANDOM%3))
	case $random in
				$isFullTimePresent)
						Employee_Hours=$FULL_DAY_HOUR
						((fullTime++))
						;;
				$isPartTimePresent)
						Employee_Hours=$PART_TIME_HOUR
						((partTime++))
						;;
				$isAbsent)
						echo "Employee is Absent"
	esac
done
Employee_Daily_Wage=$(( $WAGE_PER_HOUR * $Employee_Hours ))
echo "Total of Employee Daily Wage is: $Employee_Daily_Wage"
Total_Hours=$(( $fullTime * 8 + $partTime * 4 ))
Wage_For_Month=$(( $Total_Hours * $WAGE_PER_HOUR ))
echo "Total Wage For Month is: $Wage_For_Month"
