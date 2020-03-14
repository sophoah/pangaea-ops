#!/usr/bin/env bash

echo "Installing Harmony staking script in folder harmony-staking-script"
rm -rf harmony-staking-script 
mkdir -p harmony-staking-script

cd harmony-staking-script
curl -LOs https://raw.githubusercontent.com/sophoah/pangaea-ops/master/staking/validator-information.sh
curl -LOs https://raw.githubusercontent.com/sophoah/pangaea-ops/master/staking/edit-validator-active.sh
curl -LOs https://raw.githubusercontent.com/sophoah/pangaea-ops/master/staking/generate-multi-bls.sh
curl -LOs https://raw.githubusercontent.com/sophoah/pangaea-ops/master/staking/show-epos-comm.sh
curl -LOs https://raw.githubusercontent.com/sophoah/pangaea-ops/master/staking/is-synced.sh

