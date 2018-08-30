## **`getauxblock`**

**`getauxblock (hash auxpow)`**

Create or submit a merge-mined block.

Without arguments, create a new block and return information
required to merge-mine it.  With arguments, submit a solved
auxpow for a previously returned block.

***Arguments:***

```
1. hash      (string, optional) hash of the block to submit
2. auxpow    (string, optional) serialised auxpow found

```



***Result (without arguments):***

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



***Result (with arguments):***

```
xxxxx        (boolean) whether the submitted block was correct

```



***Examples:***

```
> syscoin-cli getauxblock 
> syscoin-cli getauxblock "hash" "serialised auxpow"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getauxblock", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
