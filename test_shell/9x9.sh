#!/bin/bash
for i in `seq 1 9`
do
    for j in `seq 1 9`
    do
        [ $j -le $i ] && echo -n "$i x $j = `echo $(($i*$j))` "
    done
    echo ""
done

