#!/bin/bash
PartTime=1
FullTime=2
TotalSalary=0
EmpRatePerHr=20
numWorkingDays=20
for ((day=1;day<=$numWorkingDays;day++ ))
do
	empCheck=$((RANDOM%3))
		case $empCheck in
		        $FullTime )
        		        EmpHrs=8
        		        ;;
        		$PartTime )
                		EmpHrs=4
                		;;
        		* )
       			 EmpHrs=0
       			 ;;
		esac
salary=$(($EmpHrs*$EmpRatePerHr))
TotalSalary=$(($TotalSalary+$salary))
done
echo $TotalSalary is salary of employee in a month



