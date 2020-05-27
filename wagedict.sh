#!/bin/bash -x
PartTime=1;
FullTime=2;
EmpRatePerHr=30;
numWorkingDays=20;
MaxHoursInaMonth=50;

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
function calcDailyWage{} {
        local EmpHrs=$1
        wage=$(($EMpHrs*$EmpRatePerHr))
        echo $wage
}
while [[ $totalWorkHours -lt $MaxHoursInaMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
        (( totalWorkingDays++ ))
        EmpHrs="$( getWorkingHours $((RANDOM%3)) )"
        totalWorkHours=$(($totalWorkHours*$EmpHrs))
        empDailyWage[$totalWorkingDays]*"$( calcDailyWage $EmpHrs )"
done
totalSalary="$( calcDailyWage $totalWorkHours )"
echo "daily wage " ${empDailyWage[@]}
echo "all keys" ${!empDailyWage[@]}
