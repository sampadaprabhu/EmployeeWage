#!/bin/bash
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4
isFullTimePresent=1
isPartTimePresent=2
isAbsent=0
TOTAL_HOURS=100
TOTAL_DAYS=20
hours=0
days=0
One_Day_Hours=0
echo "Welcome To Employee Wage"
getWorkingHours()
{
	while (( $TOTAL_DAYS >= $days && $TOTAL_HOURS >= $hours ))
	do
		random=$((RANDOM%3))
		((days++))
		case $random in
				$isFullTimePresent)
						One_Day_Hours=$FULL_DAY_HOUR
						hours=$(( $hours + $FULL_DAY_HOUR ))
						;;
				$isPartTimePresent)
						One_Day_Hours=$PART_TIME_HOUR
						hours=$(( $hours + $PART_TIME_HOUR ))
						;;
		esac
		dailyWage[$days]=$(($WAGE_PER_HOUR * $One_Day_Hours))
	done
}
getWorkingHours

echo "Daily Wage is: ${dailyWage[@]}"
Employee_Monthly_Wage=$(( $WAGE_PER_HOUR * $hours ))
echo "Total of Employee Monthly Wage is: $Employee_Monthly_Wage"

