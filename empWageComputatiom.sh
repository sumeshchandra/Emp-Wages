  
#! /bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPartTime=1
isFullTime=2
max_Hrs_in_month=10
empRatePerHr=20
num_Working_Days=20;


totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -le $max_Hrs_in_month  &&  $totalWorkingDays -le $num_Working_Days ]]
do
    empHrs=0
    (( totalWorkingDays++ ))
     empCheck=$((RANDOM%3))

      case $empCheck in
        $isFullTime)
               empHrs=8
                 ;;
        $isPartTime)
               empHrs=4
                 ;;
                 *)
               empHrs=0
                 ;;
      esac
      totalEmpHr=$(( $totalEmpHr+$empHrs ))

done
totalSalary=$(( $totalEmpHr * $empRatePerHr ))
