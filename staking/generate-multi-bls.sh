#! /bin/bash

hmybin="./hmy"
currentdir=$(dirname "$0")
count=1
max=80
shardnb=1

mkdir -p ${currentdir}/.hmy/blskeys

while [ $count -le $max ]
do
    echo $count
    pubkey=$($hmybin keys generate-bls-key | grep public-key | cut -d '"' -f 4)
    shardgen=$($hmybin utility shard-for-bls $pubkey -n https://api.s0.os.hmny.io | jq '.["shard-id"]')
    if [ $shardgen -eq $shardnb ]
    then
        cp ${currentdir}/${pubkey}.key ${currentdir}/.hmy/blskeys
        count=$(( $count + 1 ))
   else
        rm ${currentdir}/$pubkey.key
    fi
done
echo done
