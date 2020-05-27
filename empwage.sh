#!/bin/bash 
isPresent=1
randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ]
then
	EmpRatePerHr=20;
	EmpHrsPerDay=8;
	salary=$(($EmpHrsPerDay*$EmpRatePerHr))
else
	salary=0
fi
echo $salary is salary of employee
