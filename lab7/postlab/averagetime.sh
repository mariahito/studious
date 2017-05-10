#!/bin/bash
# file name: averagetime.sh
# Maria Hito (mh4wt)
# 3/22/12

while true
do
    numIters=5

    echo "enter the exponent for counter.cpp or enter 'quit' to quit"
    read input

    if [ $input == "quit" ]
    then
	exit 0
    fi

    #if [ ! -f ./a.out ]
    #then
    #    echo "The executable a.out is missing"
    #    exit 0
    #fi

    sum=0

    for (( i=1; i<=numIters; i++ ))
    do
	echo "Running iteration ${i}:"
	time=`./a.out ${input}`
	sum=`expr $sum + $time`
	# could also be replace with:
	# sum=$(($sum + $time))
	echo "time taken: ${time} milliseconds"
    done

    echo "5 iterations took ${sum}"

    echo "Average time was "`expr $sum / 5` milliseconds
    

    done
