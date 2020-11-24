#! /usr/bin/env bash

################################################################################
#: Title       : Reservation
#: Date        : 2018-03-04
#: Author      : Stefano Fiorenza
#: Version     : 1
#: Description : Check if date is inside boundaries (Reservation)
#: Options     : NONE
################################################################################


## Hardcoded reservation
INIT_DAY=12
INIT_MONTH=10
INIT_YEAR=2018

END_DAY=15
END_MONTH=10
END_YEAR=2018


# Date I would like to Book: (change those values for tests) 12/10/2018 to 15/10/2018 are NOT Available
DD=12
MM=10
YYYY=2018

# Is it available??

if (( $YYYY < $INIT_YEAR || $YYYY > $END_YEAR))
  then 
  echo "Date $DD $MM $YYYY is available "
fi

if (( $MM < $INIT_MONTH || $MM > $END_MONTH))
  then 
  echo "Date $DD $MM $YYYY is available "
fi

if (( $DD < $INIT_DAY || $DD > $END_DAY))
  then 
  echo "Date $DD $MM $YYYY is available "
  else
  echo "We are sorry, but the date $DD $MM $YYYY is NOT available "
fi