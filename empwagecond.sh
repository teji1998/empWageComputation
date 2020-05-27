#!/bin/bash -x
PartTime=1;
FullTime=2;
EmpRatePerHr=20;
numWorkingDays=20;
MaxHoursInaMonth=100;

totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $MaxHoursInaMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	(( totalWorkingDays++ ))
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
		totalEmpHrs= $(($totalEmpHrs*$EmpHrs))
                TotalSalary= $(($totalEmpHrs*$EmpRatePerHr))
done
echo $TotalSalary 
 
