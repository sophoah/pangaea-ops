#! /bin/bash

#defaulting to OSTN

validator=$1
if [ -z $2 ]
then
    api="https://api.s0.os.hmny.io"
else
    api=$2
fi

./hmy -n $api utility committees