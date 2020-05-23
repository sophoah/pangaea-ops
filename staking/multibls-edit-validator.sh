#! /bin/bash

allbls=$(ls -l .hmy/blskeys)

allblswithcomma=""
first=""
while IFS= read -r line; do
    bls="$(echo $line | cut -d ' ' -f 9 | cut -d . -f 1)"
    #echo $bls
    if [  -n "$bls" ]
    then
        allblswithcomma="${allblswithcomma},$bls"
        echo "hmy --node="https://api.s0.t.hmny.io" staking edit-validator --validator-addr one1s6r2d35jdtdw3f42nx0adau4et9egs5x3gln8y --add-bls-pubkeys $bls"
        echo "" | hmy --node="https://api.s0.t.hmny.io" staking edit-validator --validator-addr one1s6r2d35jdtdw3f42nx0adau4et9egs5x3gln8y --add-bls-key $bls 
    fi
done <<< "$allbls"
#removing first ,
#finalstring=$(echo $allblswithcomma | sed 's/^.//')
#echo $finalstring

