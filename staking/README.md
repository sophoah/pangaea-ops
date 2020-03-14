# Harmony staking scripts

Sets of scripts to interact with the harmony staking operation

## Prerequesites

```bash
apt-get install -y bc, jq
```

## Installation

script will be installed in the folder harmony-staking-script folder

```bash
bash <(curl -s -S -L https://raw.githubusercontent.com/sophoah/pangaea-ops/master/staking/install-script.sh)
```

## How to use

### is-synced.sh

Checking if your current node is in sync with the network. It return the difference between network and your node block height.
bash harmony-staking-script/is-synced.sh <shardnb>

```bash
bash harmony-staking-script/is-synced.sh 0
```

### validator-information.sh

show validator information : bash harmony-staking-script/validator-information.sh <validator_one_account>
