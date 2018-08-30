## **`getblockheaders`**

**`getblockheaders "hash" ( count verbose )`**

Returns an array of items with information about <count> blockheaders starting from <hash>.

If verbose is false, each item is a string that is serialized, hex-encoded data for a single blockheader.
If verbose is true, each item is an Object with information about a single blockheader.

***Arguments:***

```
1. "hash"          (string, required) The block hash
2. count           (numeric, optional, default/max=2000)
3. verbose         (boolean, optional, default=true) true for a json object, false for the hex encoded data

```



***Result (for verbose = true):***

```
[ {
  "hash" : "hash",               (string)  The block hash
  "confirmations" : n,           (numeric) The number of confirmations, or -1 if the block is not on the main chain
  "height" : n,                  (numeric) The block height or index
  "version" : n,                 (numeric) The block version
  "merkleroot" : "xxxx",         (string)  The merkle root
  "time" : ttt,                  (numeric) The block time in seconds since epoch (Jan 1 1970 GMT)
  "mediantime" : ttt,            (numeric) The median block time in seconds since epoch (Jan 1 1970 GMT)
  "nonce" : n,                   (numeric) The nonce
  "bits" : "1d00ffff",           (string)  The bits
  "difficulty" : x.xxx,          (numeric) The difficulty
  "chainwork" : "0000...1f3"     (string)  Expected number of hashes required to produce the current chain (in hex)
  "previousblockhash" : "hash",  (string)  The hash of the previous block
  "nextblockhash" : "hash",      (string)  The hash of the next block
}, {
       ...
   },
...
]

```



***Result (for verbose=false):***

```
[
  "data",                        (string)  A string that is serialized, hex-encoded data for block header.
  ...
]

```



***Examples:***

```
> syscoin-cli getblockheaders "00000000c937983704a73af28acdec37b049d214adbda81d7e2a3dd146f6ed09" 2000
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockheaders", "params": ["00000000c937983704a73af28acdec37b049d214adbda81d7e2a3dd146f6ed09" 2000] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
