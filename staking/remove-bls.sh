#! /bin/bash

#keys to be removed
keystoremove="72b929125f26641ec472a9e6ff3859cfcd9fb4703b5c2818bbbf74003eea0e0fc774c2b96644f12da6d00c7954f51f0c
739a58d2b8a70470a0e94cb868c03f769d8d09ccf362e685c97f5a456c6f1235d8484a02383cbe1ca6742fa3c442b384
73dd1458fadd646922e38c9a851b03abcb1c8d4c751da23651c2c05fc41ce3f118749069b6323c1c1e8ac1f38bd1290c
7549e34a2da298973afae122ee995986403386e8ca9bc6ddffd4e79ecdacd69ddeb1c6aa7a0774d1ed407248e36e0f88
758b1e2b68bd5c7ef9b60617251ea53a6b51984386de5ac2761614a8d2eb13292df7253433c33d9618500150241db984
7a2ac27fef8bd332f8614177657059fb40bb43b2bd961f30efa9af959f9f94d2b056e2fd7e1c1238205fea17af659198
7f3d987298d7b4290eeb665c3a565fb7364508f054c9fde6d3c049bd07fe1cb5ba41d5449074db06f46bbf9e76ce0514
8a4869187241ce0eb037d1ac38daa1427f26890d4a7d8c94be31187b615a4c4899b03f0604360dee4123f3b928975190
918439b0b8ce50e0db42e87bcada65eb7e88f7961e1e231ebe5ed2534cbfcff8ffc99814e576efdbdff7119bbc508904
a18952a5200f09f84abf8d36bf1a28eee74d142764912f68c680cf9bdcd33303df60bd68b166856d24d4f4404a350800
"

while IFS="\n" read -r line; do
    bls="$(echo $line)"
    #echo $bls
    if [  -n "$bls" ]
    then
        echo "./hmy --node="https://api.s0.os.hmny.io" staking edit-validator --validator-addr one1u6c4wer2dkm767hmjeehnwu6tqqur62gx9vqsd --remove-bls-key $bls"
        echo "" | ./hmy --node="https://api.s0.os.hmny.io" staking edit-validator --validator-addr one1u6c4wer2dkm767hmjeehnwu6tqqur62gx9vqsd --remove-bls-key $bls
    fi
done <<< "$keystoremove"
