#! /bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPartTime=1
isFullTime=2
max_Hrs_in_month=10
empRatePerHr=20
num_Working_Days=20;

declare -a empWageArray
totalEmpHr=0
totalWorkingDays=0
function getWorkingHours(){

      case $1 in
        $isFullTime)
               workingHours=8
                 ;;
        $isPartTime)
               workingHours=4
                 ;;
                 *)
               workingHours=0
                 ;;
      esac
      echo $workingHours
}

while [[ $totalWorkingHours -le $max_Hrs_in_month  &&  $totalWorkingDays -le $num_Working_Days ]]
do

    (( totalWorkingDays++ ))
     workingHours="$( getWorkingHours $((RANDOM%3)) )"
     totalWorkingHours=$(( $totalWorkingHours + $workingHours ))
     empWageArray[$totalWorkingDays]=$(( $workingHours * $empRatePerHr ))
done
totalSalary=$(( $totalWorkingHours * $empRatePerHr ))
echo "Day ${!empWageArray[@]}"
echo "Daily wages : ${empWageArray[@]}"
