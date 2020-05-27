#!/bin/bash -x
PartTime=1;
FullTime=2;
EmpRatePerHr=20;
numWorkingDays=20;
MaxHoursInaMonth=10;

totalEmpHr=0;
totalWorkingDays=0;

function getWorkingHours{} {
                case $1 in
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
		echo $EmpHrs
	      }
while [[ $totalWorkHours -lt $MaxHoursInaMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	(( totalWorkingDays++ ))
	EmpHrs="$( getWorkingHours $((RANDOM%3)) )"
	totalWorkHours=$(($totalWorkHours*$EmpHrs))
done
totalSalary=$(($totalWorkHours*$EmpRatePerHr))
echo $totalSalary
