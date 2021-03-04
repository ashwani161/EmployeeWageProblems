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
