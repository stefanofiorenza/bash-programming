year=`date +%Y`

if [ $[$year % 400] -eq "0" ]; then
  echo "This is a leap year.  February has 29 days."
elif [ $[$year % 4] -eq 0 ]; then
        if [ $[$year % 100] -ne 0 ]; then
          echo "This is a leap year, February has 29 days."
        else
          echo "This is not a leap year.  February has 28 days."
        fi
else
  echo "This is not a leap year.  February has 28 days."
fi




# if [ test ]; then
# <command>
# elif [ test ]; then
#        if [ test ]; then
#         <command>
#       else
#         <command>
#        fi
#else
#  <command>
#fi

count=99
if [ $count -eq 100 ]
then
  echo "Count is 100"
else
  if [ $count -gt 100 ]
  then
    echo "Count is greater than 100"
  else
  echo "Count is less than 100"
  fi
fi