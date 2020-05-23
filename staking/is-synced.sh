#! /bin/bash

#defaulting to OSTN

shardtest=$1

api="https://api.s${shardtest}.t.hmny.io"

network_info=$(curl -s -L0 https://monitor.hmny.io/status?network=ostn)
node_info=$(./hmy blockchain latest-headers)


node_height=$(./hmy blockchain latest-headers | jq ".result.blockNumber")
network_height=$(./hmy blockchain latest-header -n $api | jq ".result.blockNumber")
diff=$((network_height - node_height))

echo $diff 


