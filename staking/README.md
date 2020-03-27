# Harmony staking scripts

Sets of small scripts to interact with the harmony staking chain

## Prerequesites

```bash
apt-get install -y bc jq
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

inline bash
```
bash <(curl -sSL https://raw.githubusercontent.com/sophoah/pangaea-ops/master/staking/is-synced.sh) 1
```

### validator-information.sh

show validator information : bash harmony-staking-script/validator-information.sh <validator_one_account>

```bash
bash harmony-staking-script/validator-information.sh one1u6c4wer2dkm767hmjeehnwu6tqqur62gx9vqsd
```

## TODO

Add feature to enable the usage of a passphrase
