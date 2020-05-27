#!/bin/bash
PartTime=1
FullTime=2
EmpRatePerHr=20
empCheck=$((RANDOM%3))
case $empCheck in
	$FullTime )
        	EmpHrs=10
		;;
	$PartTime )
                EmpHrs=8
		;;
	* )
        EmpHrs=0
	;;
esac	
salary=$(($EmpHrs*$EmpRatePerHr))
echo $salary is salary of employee
