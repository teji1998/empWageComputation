#!/bin/bash
PartTime=1
FullTime=2
EmpRatePerHr=20
randomCheck=$((RANDOM%3))
if [ $FullTime -eq $randomCheck ]
then
        EmpHrs=10
elif [ $PartTime -eq $randomCheck ]
then
	EmpHrs=8
else
	EmpHrs=0
fi
        salary=$(($EmpHrs*$EmpRatePerHr))
echo $salary is salary of employee

