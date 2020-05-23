#!/usr/bin/env bash

echo "Installing Harmony staking script in hss folder (hss : harmony-staking-script)"
rm -rf hss
mkdir -p hss

cd hss
curl -LOs https://raw.githubusercontent.com/sophoah/pangaea-ops/master/staking/hmy-update.sh
curl -LOs https://raw.githubusercontent.com/sophoah/pangaea-ops/master/staking/validator-information.sh
curl -LOs https://raw.githubusercontent.com/sophoah/pangaea-ops/master/staking/edit-validator-active.sh
curl -LOs https://raw.githubusercontent.com/sophoah/pangaea-ops/master/staking/collect-reward.sh
curl -LOs https://raw.githubusercontent.com/sophoah/pangaea-ops/master/staking/generate-multi-bls.sh
curl -LOs https://raw.githubusercontent.com/sophoah/pangaea-ops/master/staking/show-epos-comm.sh
curl -LOs https://raw.githubusercontent.com/sophoah/pangaea-ops/master/staking/is-synced.sh

