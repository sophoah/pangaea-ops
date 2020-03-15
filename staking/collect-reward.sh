#! /bin/bash

#defaulting to OSTN


delegator=$1
if [ -z $2 ]
then
    api="https://api.s0.os.hmny.io"
else
    api=$2
fi

#TODO add --passphrase capability

echo "./hmy -n $api staking collect-rewards --delegator-addr $delegator"
./hmy -n $api staking collect-rewards --delegator-addr $delegator
