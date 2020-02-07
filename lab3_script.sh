#!/bin/bash
# Authors : Ryan Oroke
# Date: 2/7/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter a file name: "
read inputFile
echo "Enter a regular expression: "
read inputRegEx
echo "The RegEx $inputRegEx in $inputFile:"
grep $inputRegEx $inputFile

echo "The number of phone numbers: "
grep -c -E "[0-9]{3}-[0-9]{3}-[0-9]{4}" regex_practice.txt
echo "The number of emails is: "
grep -c -E "@" regex_practice.txt
echo "All the 303 numbers are: "
grep -o -E "303-[0-9]{3}-[0-9]{4}" regex_practice.txt

#GitHub Commit
echo "Sending all '@geocities.com' emails to email_results.txt"
grep -E "@geocities.com" regex_practice.txt >> email_results.txt
git add email_results.txt
git commit -m "A standard commit message for the list of geocities.com emails."