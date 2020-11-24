#! /usr/bin/env bash

################################################################################
#: Title       : Reservation Interval
#: Date        : 2018-03-04
#: Author      : Stefano Fiorenza
#: Version     : 1
#: Description : Check if date interval is inside boundaries (Reservation)
#: Options     : NONE
################################################################################


## Hardcoded reservation
INIT_DAY=12
INIT_MONTH=10
INIT_YEAR=2018

END_DAY=15
END_MONTH=10
END_YEAR=2018


# Date Interval I would like to Book: (change those values for tests) 12/10/2018 to 15/10/2018 are NOT Available
FROM_DD=12
FROM_MM=10
FROM_YYYY=2018

TO_DD=21
TO_MM=10
TO_YYYY=2018

# Is Interval available??

if (( $TO_YYYY < $INIT_YEAR || $FROM_YYYY > $END_YEAR)) || 
      (( $TO_MM < $INIT_MONTH || $FROM_MM > $END_MONTH)) || 
        (( $TO_DD < $INIT_DAY || $FROM_DD > $END_DAY))
  then 
    echo "Dates $FROM_DD/$FROM_MM/$FROM_YYYY to $TO_DD/$TO_MM/$TO_YYYY are available "
  else
    echo "We are sorry, but Dates $FROM_DD/$FROM_MM/$FROM_YYYY to $TO_DD/$TO_MM/$TO_YYYY are NOT available "
fi

