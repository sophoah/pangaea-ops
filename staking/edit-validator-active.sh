#! /bin/bash

#defaulting to mainnet

validator=$1
if [ -z $2 ]
then
    api="https://api.s0.t.hmny.io"
else
    api=$2
fi

#TODO add --passphrase capability

echo "./hmy -n $api staking edit-validator --active true --validator-addr $validator"
./hmy -n $api staking edit-validator --active true --validator-addr $validator