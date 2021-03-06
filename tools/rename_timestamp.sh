#!/bin/bash

FILES=$1/*.bin

for f in $FILES
do
    b=$(basename $f)
    year=${b:0:4}
    month=${b:5:2}
    day=${b:8:2}
    hour=${b:11:2}
    minute=${b:14:2}
    second=${b:17:2}

    ts=$(date --date="$month/$day/$year $hour:$minute:$second" +"%s")

    mv $1/$b $1/${ts}_${b}

done
