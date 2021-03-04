#!/bin/bash -x
echo "Welcome to Employee";
echo "Wage Computation";
echo "Program on Master Branch";

isPresent=1;
randomCheck=$((RANDOM%2));
if [ $isPresent -eq $randomCheck ];
then
     echo "Employee is present";
else
     echo "Employee is absent";
fi

if [ $isPresent -eq $randomCheck ];
then
     empRatePerHr=20;
     empHrs=8;
     salary=$(($empHrs*$empRatePerHr));
else
     salary=0;
fi

isPartTime=1;
isFullTime=2;
empRateperHr=20;
randomCheck=$((RANDOM%3));
if [ $isFullTime -eq $randomCheck ];
then
       empHrs=8;
elif [ $isPartTime -eq $randomCheck ];
then
       empHrs=4;
else
    empHrs=0;
fi
salary=$(($empHrs*$empRatePerHr));

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
salary=$(($empHrs*$empRatePerHr));

isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
numWorkingDays=20;
for (( day=1; day<=$numWorkingDays; day++ ))
do
   empCheck=$((RANDOM%3));
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
salary=$(($empHrs*$empRatePerHr));
totalSalary=$(($totalSalary+$salary));
done

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHr=0;
totalWorkingDays=0;
while [[ $totalEmpHr -lt $mAX_HRS_IN_MONTH &&
         $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
      ((totalWorkingDays++))
      empCheck=$((RANDOM%3));
    case $empCheck in
      $IS_FULL_TIME)
           empHrs=8;;
      $IS_PART_TIME)
           empHrs=4;;
      *)
           empHrs=0;;
      esac
      totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$(($totalEmpHr*$EMP_RATE_PER_HR));

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHr=0;
totalWorkingDays=0;

function getWorkingHours() {
                case $1 in
                         $IS_FULL_TIME)
                             workingHours=8
                             ;;
                         $IS_PART_TIME)
                             workingHours=4
                             ;;
                          *)
                             workingHours=0
                             ;;
                           esac
                           echo $workingHours
}
while [[ $totalWorkingHours -lt $MAX_HRS_IN_MONTH &&
                         $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
         ((totalWorkingdays++))
         workingHours="$( getWorkingHours $((RANDOM%3)) )"
         totalWorkingHours=$(($totalWorkingHOurs+$workingHours))
done

totalSalary=$(($totalWorkingHours*$EMP_RATE_PER_HR));


IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHr=0;
totalWorkingDays=0;

function getWorkHrs() {
  local $empCheck=$1
  case $empCheck in
    $IS_FULL_TIME)
       empHrs=8
           ;;
    $IS_PART_TIME)
       empHrs=4
           ;;
    *)
       empHrs=0
           ;;
    esac
    echo $empHrs
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH &&
         $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
    ((totalWorkingDays++))
     empCheck=$((RANDOM%3));
     empHrs="$( getWorkHrs $empCheck )"
     totalEmpHrs=$(($totalEmpHrs+$empHrs))
     dailyWage[$totalWorkingDays]=$(($empHrs*EMP_RATE_PER_HR))
done

totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR));
echo ${dailyWage[@]}


IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHr=0;
totalWorkingDays=0;

declare -A dailyWage

function getWorkHrs() {
  local $empCheck=$1
  case $empCheck in
    $IS_FULL_TIME)
       empHrs=8
           ;;
    $IS_PART_TIME)
       empHrs=4
           ;;
    *)
       empHrs=0
           ;;
    esac
    echo $empHrs
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH &&
         $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
    ((totalWorkingDays++))
     empCheck=$((RANDOM%3));
     empHrs="$( getWorkHrs $empCheck )"
     totalEmpHrs=$(($totalEmpHrs+$empHrs))
     dailyWage["Day "$totalWorkingDays]="$( getEmpwage $empHrs )"
done

totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR));
echo ${dailyWage[@]}
echo ${!dailyWage[@]}
