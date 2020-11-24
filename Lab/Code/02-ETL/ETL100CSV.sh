#!/bin/bash


#1) Print All
: '
IFS="," 

while read -r id car price
do
    echo "car: $car price: $price"
done < Cars.csv
'

#2) Print Only "Jetta" and "Suburban 1500"
: '
IFS="," 

while read -r id car price
do
    if [[ $car == "Jetta" || $car == "Suburban 1500" ]]
    then 
        echo "car: $car price: $price"
    fi
done < Cars.csv
'

#3) Count "Jetta" and "Suburban 1500"
: '
IFS="," 
JETTA=0;
SUBURBAN=0;

while read -r id car price
do
    if [[ $car == "Jetta" ]]
    then 
        let JETTA=$JETTA+1;
    fi

    if [[ $car == "Suburban 1500" ]]
    then 
        let SUBURBAN=$SUBURBAN+1;
    fi
done < Cars.csv

echo "JETTA: $JETTA"
echo "SUBURBAN: $SUBURBAN"
'

#4) Aggregate Price "Jetta" and "Suburban 1500"
: '
IFS="," 
JETTA_PRICE=0;
SUBURBAN_PRICE=0;

while read -r id car price
do
    if [[ $car == "Jetta" ]]
    then 
        let JETTA_PRICE=$JETTA_PRICE+$price;
    fi

    if [[ $car == "Suburban 1500" ]]
    then 
        let SUBURBAN_PRICE=$SUBURBAN_PRICE+$price;

    fi
done < Cars.csv

echo "JETTA: $JETTA_PRICE"
echo "SUBURBAN: $SUBURBAN_PRICE"
'