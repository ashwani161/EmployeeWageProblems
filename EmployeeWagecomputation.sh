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
