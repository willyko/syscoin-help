## **`createauxblock`**

**`createauxblock <address>`**

create a new block and return information required to merge-mine it.

***Arguments:***
```
1. address      (string, required) specify coinbase transaction payout address

```

***Result:***
```
{
  "hash"               (string) hash of the created block
  "chainid"            (numeric) chain ID for this block
  "previousblockhash"  (string) hash of the previous block
  "coinbasevalue"      (numeric) value of the block's coinbase
  "bits"               (string) compressed target of the block
  "height"             (numeric) height of the block
  "_target"            (string) target in reversed byte order, deprecated
}

```

***Examples:***
```
> syscoin-cli createauxblock "address"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "createauxblock", "params": ["address"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
