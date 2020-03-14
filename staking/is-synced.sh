#! /bin/bash

#defaulting to OSTN

shardtest=$1

api="https://api.s${shardtest}.os.hmny.io"

node_height=$(./hmy blockchain latest-header | jq ".result.blockNumber")
network_height=$(./hmy blockchain latest-header -n $api | jq ".result.blockNumber")

diff=$(echo "$network_height - $node_height" | bc)

echo $diff 


