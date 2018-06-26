

Addressindex
==============================
## **`getaddressbalance`**

*`getaddressbalance`*

Returns the balance for an address(es) (requires addressindex to be enabled).

*Arguments:*```
1. {
  "addresses"
    [
      "address"  (string) The base58check encoded address
      ,...
    ]
}
2. separated_output(boolean) If set to true, will return balances of the addresses passed in as an array instead of the summed balance. Default is false.

```*Result:*```
{
  "balance"  (string) The current balance in satoshis
  "received"  (string) The total number of satoshis received (including change)
}

```*Examples:*```
> syscoin-cli getaddressbalance '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}' true
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressbalance", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getaddressdeltas`**

*`getaddressdeltas`*

Returns all changes for an address (requires addressindex to be enabled).

*Arguments:*```
{
  "addresses"
    [
      "address"  (string) The base58check encoded address
      ,...
    ]
  "start" (number) The start block height
  "end" (number) The end block height
}

```*Result:*```
[
  {
    "satoshis"  (number) The difference of satoshis
    "txid"  (string) The related txid
    "index"  (number) The related input or output index
    "blockindex"  (number) The related block index
    "height"  (number) The block height
    "address"  (string) The base58check encoded address
  }
]

```*Examples:*```
> syscoin-cli getaddressdeltas '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}'
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressdeltas", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getaddressmempool`**

*`getaddressmempool`*

Returns all mempool deltas for an address (requires addressindex to be enabled).

*Arguments:*```
{
  "addresses"
    [
      "address"  (string) The base58check encoded address
      ,...
    ]
}

```*Result:*```
[
  {
    "address"  (string) The base58check encoded address
    "txid"  (string) The related txid
    "index"  (number) The related input or output index
    "satoshis"  (number) The difference of satoshis
    "timestamp"  (number) The time the transaction entered the mempool (seconds)
    "prevtxid"  (string) The previous txid (if spending)
    "prevout"  (string) The previous transaction output index (if spending)
  }
]

```*Examples:*```
> syscoin-cli getaddressmempool '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}'
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressmempool", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getaddresstxids`**

*`getaddresstxids`*

Returns the txids for an address(es) (requires addressindex to be enabled).

*Arguments:*```
{
  "addresses"
    [
      "address"  (string) The base58check encoded address
      ,...
    ]
  "start" (number) The start block height
  "end" (number) The end block height
}

```*Result:*```
[
  "transactionid"  (string) The transaction id
  ,...
]

```*Examples:*```
> syscoin-cli getaddresstxids '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}'
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddresstxids", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getaddressutxos`**

*`getaddressutxos`*

Returns all unspent outputs for an address (requires addressindex to be enabled).

*Arguments:*```
{
  "addresses"
    [
      "address"  (string) The base58check encoded address
      ,...
    ]
}

```*Result:*```
[
  {
    "address"  (string) The address base58check encoded
    "txid"  (string) The output txid
    "outputIndex"  (number) The output index
    "script"  (string) The script hex encoded
    "satoshis"  (number) The number of satoshis of the output
    "height"  (number) The block height
  }
]

```*Examples:*```
> syscoin-cli getaddressutxos '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}'
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressutxos", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`



Blockchain
==============================
## **`getbestblockhash`**

*`getbestblockhash`*

Returns the hash of the best (tip) block in the longest blockchain.

```*Result:*```
"hex"      (string) the block hash hex encoded

```*Examples:*```
> syscoin-cli getbestblockhash 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getbestblockhash", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getblock`**

*`getblock "blockhash" ( verbose )`*

If verbose is false, returns a string that is serialized, hex-encoded data for block 'hash'.
If verbose is true, returns an Object with information about block <hash>.

*Arguments:*```
1. "blockhash"          (string, required) The block hash
2. verbose                (boolean, optional, default=true) true for a json object, false for the hex encoded data

```*Result (for verbose = true):*```
{
  "hash" : "hash",     (string) the block hash (same as provided)
  "confirmations" : n,   (numeric) The number of confirmations, or -1 if the block is not on the main chain
  "size" : n,            (numeric) The block size
  "height" : n,          (numeric) The block height or index
  "version" : n,         (numeric) The block version
  "versionHex" : "00000000", (string) The block version formatted in hexadecimal
  "merkleroot" : "xxxx", (string) The merkle root
  "tx" : [               (array of string) The transaction ids
     "transactionid"     (string) The transaction id
     ,...
  ],
  "time" : ttt,          (numeric) The block time in seconds since epoch (Jan 1 1970 GMT)
  "mediantime" : ttt,    (numeric) The median block time in seconds since epoch (Jan 1 1970 GMT)
  "nonce" : n,           (numeric) The nonce
  "bits" : "1d00ffff", (string) The bits
  "difficulty" : x.xxx,  (numeric) The difficulty
  "chainwork" : "xxxx",  (string) Expected number of hashes required to produce the chain up to this block (in hex)
  "previousblockhash" : "hash",  (string) The hash of the previous block
  "nextblockhash" : "hash"       (string) The hash of the next block
}

```*Result (for verbose=false):*```
"data"             (string) A string that is serialized, hex-encoded data for block 'hash'.

```*Examples:*```
> syscoin-cli getblock "00000000000fd08c2fb661d2fcb0d49abb3a91e5f27082ce64feed3b4dede2e2"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblock", "params": ["00000000000fd08c2fb661d2fcb0d49abb3a91e5f27082ce64feed3b4dede2e2"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getblockchaininfo`**

*`getblockchaininfo`*
Returns an object containing various state info regarding blockchain processing.

```*Result:*```
{
  "chain": "xxxx",        (string) current network name as defined in BIP70 (main, test, regtest)
  "blocks": xxxxxx,         (numeric) the current number of blocks processed in the server
  "headers": xxxxxx,        (numeric) the current number of headers we have validated
  "bestblockhash": "...", (string) the hash of the currently best block
  "difficulty": xxxxxx,     (numeric) the current difficulty
  "mediantime": xxxxxx,     (numeric) median time for the current best block
  "verificationprogress": xxxx, (numeric) estimate of verification progress [0..1]
  "chainwork": "xxxx"     (string) total amount of work in active chain, in hexadecimal
  "pruned": xx,             (boolean) if the blocks are subject to pruning
  "pruneheight": xxxxxx,    (numeric) lowest-height complete block stored
  "softforks": [            (array) status of softforks in progress
     {
        "id": "xxxx",        (string) name of softfork
        "version": xx,         (numeric) block version
        "reject": {            (object) progress toward rejecting pre-softfork blocks
           "status": xx,       (boolean) true if threshold reached
        },
     }, ...
  ],
  "bip9_softforks": {          (object) status of BIP9 softforks in progress
     "xxxx" : {                (string) name of the softfork
        "status": "xxxx",    (string) one of "defined", "started", "locked_in", "active", "failed"
        "bit": xx,             (numeric) the bit (0-28) in the block version field used to signal this softfork (only for "started" status)
        "startTime": xx,       (numeric) the minimum median time past of a block at which the bit gains its meaning
        "timeout": xx,         (numeric) the median time past of a block at which the deployment is considered failed if not yet locked in
        "since": xx            (numeric) height of the first block to which the status applies
     }
  }
}

```*Examples:*```
> syscoin-cli getblockchaininfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockchaininfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getblockcount`**

*`getblockcount`*

Returns the number of blocks in the longest blockchain.

```*Result:*```
n    (numeric) The current block count

```*Examples:*```
> syscoin-cli getblockcount 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockcount", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getblockhash`**

*`getblockhash height`*

Returns hash of block in best-block-chain at height provided.

*Arguments:*```
1. height         (numeric, required) The height index

```*Result:*```
"hash"         (string) The block hash

```*Examples:*```
> syscoin-cli getblockhash 1000
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockhash", "params": [1000] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getblockhashes`**

*`getblockhashes timestamp`*

Returns array of hashes of blocks within the timestamp range provided.

*Arguments:*```
1. high         (numeric, required) The newer block timestamp
2. low          (numeric, required) The older block timestamp

```*Result:*```
[
  "hash"         (string) The block hash
]

```*Examples:*```
> syscoin-cli getblockhashes 1231614698 1231024505
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockhashes", "params": [1231614698, 1231024505] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getblockheader`**

*`getblockheader "hash" ( verbose )`*

If verbose is false, returns a string that is serialized, hex-encoded data for blockheader 'hash'.
If verbose is true, returns an Object with information about blockheader <hash>.

*Arguments:*```
1. "hash"          (string, required) The block hash
2. verbose           (boolean, optional, default=true) true for a json object, false for the hex encoded data

```*Result (for verbose = true):*```
{
  "hash" : "hash",     (string) the block hash (same as provided)
  "confirmations" : n,   (numeric) The number of confirmations, or -1 if the block is not on the main chain
  "height" : n,          (numeric) The block height or index
  "version" : n,         (numeric) The block version
  "versionHex" : "00000000", (string) The block version formatted in hexadecimal
  "merkleroot" : "xxxx", (string) The merkle root
  "time" : ttt,          (numeric) The block time in seconds since epoch (Jan 1 1970 GMT)
  "mediantime" : ttt,    (numeric) The median block time in seconds since epoch (Jan 1 1970 GMT)
  "nonce" : n,           (numeric) The nonce
  "bits" : "1d00ffff", (string) The bits
  "difficulty" : x.xxx,  (numeric) The difficulty
  "chainwork" : "0000...1f3"     (string) Expected number of hashes required to produce the current chain (in hex)
  "previousblockhash" : "hash",  (string) The hash of the previous block
  "nextblockhash" : "hash",      (string) The hash of the next block
}

```*Result (for verbose=false):*```
"data"             (string) A string that is serialized, hex-encoded data for block 'hash'.

```*Examples:*```
> syscoin-cli getblockheader "00000000c937983704a73af28acdec37b049d214adbda81d7e2a3dd146f6ed09"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockheader", "params": ["00000000c937983704a73af28acdec37b049d214adbda81d7e2a3dd146f6ed09"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getblockheaders`**

*`getblockheaders "hash" ( count verbose )`*

Returns an array of items with information about <count> blockheaders starting from <hash>.

If verbose is false, each item is a string that is serialized, hex-encoded data for a single blockheader.
If verbose is true, each item is an Object with information about a single blockheader.

*Arguments:*```
1. "hash"          (string, required) The block hash
2. count           (numeric, optional, default/max=2000)
3. verbose         (boolean, optional, default=true) true for a json object, false for the hex encoded data

```*Result (for verbose = true):*```
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

```*Result (for verbose=false):*```
[
  "data",                        (string)  A string that is serialized, hex-encoded data for block header.
  ...
]

```*Examples:*```
> syscoin-cli getblockheaders "00000000c937983704a73af28acdec37b049d214adbda81d7e2a3dd146f6ed09" 2000
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockheaders", "params": ["00000000c937983704a73af28acdec37b049d214adbda81d7e2a3dd146f6ed09" 2000] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getchaintips`**

*`getchaintips ( count branchlen )`*
Return information about all known tips in the block tree, including the main chain as well as orphaned branches.

*Arguments:*```
1. count       (numeric, optional) only show this much of latest tips
2. branchlen   (numeric, optional) only show tips that have equal or greater length of branch

```*Result:*```
[
  {
    "height": xxxx,             (numeric) height of the chain tip
    "hash": "xxxx",             (string) block hash of the tip
    "difficulty" : x.xxx,       (numeric) The difficulty
    "chainwork" : "0000...1f3"  (string) Expected number of hashes required to produce the current chain (in hex)
    "branchlen": 0              (numeric) zero for main chain
    "forkpoint": "xxxx",        (string) same as "hash" for the main chain
    "status": "active"          (string) "active" for the main chain
  },
  {
    "height": xxxx,
    "hash": "xxxx",
    "difficulty" : x.xxx,
    "chainwork" : "0000...1f3"
    "branchlen": 1              (numeric) length of branch connecting the tip to the main chain
    "forkpoint": "xxxx",        (string) block hash of the last common block between this tip and the main chain
    "status": "xxxx"            (string) status of the chain (active, valid-fork, valid-headers, headers-only, invalid)
  }
]
Possible values for status:
1.  "invalid"               This branch contains at least one invalid block
2.  "headers-only"          Not all blocks for this branch are available, but the headers are valid
3.  "valid-headers"         All blocks are available for this branch, but they were never fully validated
4.  "valid-fork"            This branch is not part of the active chain, but is fully validated
5.  "active"                This is the tip of the active main chain, which is certainly valid

```*Examples:*```
> syscoin-cli getchaintips 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getchaintips", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getdifficulty`**

*`getdifficulty`*

Returns the proof-of-work difficulty as a multiple of the minimum difficulty.

```*Result:*```
n.nnn       (numeric) the proof-of-work difficulty as a multiple of the minimum difficulty.

```*Examples:*```
> syscoin-cli getdifficulty 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getdifficulty", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getmempoolancestors`**

*`getmempoolancestors txid (verbose)`*

If txid is in the mempool, returns all in-mempool ancestors.

*Arguments:*```
1. "txid"                 (string, required) The transaction id (must be in mempool)
2. verbose                  (boolean, optional, default=false) True for a json object, false for array of transaction ids

```*Result (for verbose=false):*```
[                       (json array of strings)
  "transactionid"           (string) The transaction id of an in-mempool ancestor transaction
  ,...
]

```*Result (for verbose=true):*```
{                           (json object)
  "transactionid" : {       (json object)
    "size" : n,             (numeric) transaction size in bytes
    "fee" : n,              (numeric) transaction fee in SYS
    "modifiedfee" : n,      (numeric) transaction fee with fee deltas used for mining priority
    "time" : n,             (numeric) local time transaction entered pool in seconds since 1 Jan 1970 GMT
    "height" : n,           (numeric) block height when transaction entered pool
    "startingpriority" : n, (numeric) DEPRECATED. Priority when transaction entered pool
    "currentpriority" : n,  (numeric) DEPRECATED. Transaction priority now
    "descendantcount" : n,  (numeric) number of in-mempool descendant transactions (including this one)
    "descendantsize" : n,   (numeric) size of in-mempool descendants (including this one)
    "descendantfees" : n,   (numeric) modified fees (see above) of in-mempool descendants (including this one)
    "ancestorcount" : n,    (numeric) number of in-mempool ancestor transactions (including this one)
    "ancestorsize" : n,     (numeric) size of in-mempool ancestors (including this one)
    "ancestorfees" : n,     (numeric) modified fees (see above) of in-mempool ancestors (including this one)
    "depends" : [           (array) unconfirmed transactions used as inputs for this transaction
        "transactionid",    (string) parent transaction id
       ... ]
  }, ...
}

```*Examples:*```
> syscoin-cli getmempoolancestors "mytxid"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmempoolancestors", "params": ["mytxid"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getmempooldescendants`**

*`getmempooldescendants txid (verbose)`*

If txid is in the mempool, returns all in-mempool descendants.

*Arguments:*```
1. "txid"                 (string, required) The transaction id (must be in mempool)
2. verbose                  (boolean, optional, default=false) True for a json object, false for array of transaction ids

```*Result (for verbose=false):*```
[                       (json array of strings)
  "transactionid"           (string) The transaction id of an in-mempool descendant transaction
  ,...
]

```*Result (for verbose=true):*```
{                           (json object)
  "transactionid" : {       (json object)
    "size" : n,             (numeric) transaction size in bytes
    "fee" : n,              (numeric) transaction fee in SYS
    "modifiedfee" : n,      (numeric) transaction fee with fee deltas used for mining priority
    "time" : n,             (numeric) local time transaction entered pool in seconds since 1 Jan 1970 GMT
    "height" : n,           (numeric) block height when transaction entered pool
    "startingpriority" : n, (numeric) DEPRECATED. Priority when transaction entered pool
    "currentpriority" : n,  (numeric) DEPRECATED. Transaction priority now
    "descendantcount" : n,  (numeric) number of in-mempool descendant transactions (including this one)
    "descendantsize" : n,   (numeric) size of in-mempool descendants (including this one)
    "descendantfees" : n,   (numeric) modified fees (see above) of in-mempool descendants (including this one)
    "ancestorcount" : n,    (numeric) number of in-mempool ancestor transactions (including this one)
    "ancestorsize" : n,     (numeric) size of in-mempool ancestors (including this one)
    "ancestorfees" : n,     (numeric) modified fees (see above) of in-mempool ancestors (including this one)
    "depends" : [           (array) unconfirmed transactions used as inputs for this transaction
        "transactionid",    (string) parent transaction id
       ... ]
  }, ...
}

```*Examples:*```
> syscoin-cli getmempooldescendants "mytxid"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmempooldescendants", "params": ["mytxid"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getmempoolentry`**

*`getmempoolentry txid`*

Returns mempool data for given transaction

*Arguments:*```
1. "txid"                   (string, required) The transaction id (must be in mempool)

```*Result:*```
{                           (json object)
    "size" : n,             (numeric) transaction size in bytes
    "fee" : n,              (numeric) transaction fee in SYS
    "modifiedfee" : n,      (numeric) transaction fee with fee deltas used for mining priority
    "time" : n,             (numeric) local time transaction entered pool in seconds since 1 Jan 1970 GMT
    "height" : n,           (numeric) block height when transaction entered pool
    "startingpriority" : n, (numeric) DEPRECATED. Priority when transaction entered pool
    "currentpriority" : n,  (numeric) DEPRECATED. Transaction priority now
    "descendantcount" : n,  (numeric) number of in-mempool descendant transactions (including this one)
    "descendantsize" : n,   (numeric) size of in-mempool descendants (including this one)
    "descendantfees" : n,   (numeric) modified fees (see above) of in-mempool descendants (including this one)
    "ancestorcount" : n,    (numeric) number of in-mempool ancestor transactions (including this one)
    "ancestorsize" : n,     (numeric) size of in-mempool ancestors (including this one)
    "ancestorfees" : n,     (numeric) modified fees (see above) of in-mempool ancestors (including this one)
    "depends" : [           (array) unconfirmed transactions used as inputs for this transaction
        "transactionid",    (string) parent transaction id
       ... ]
}

```*Examples:*```
> syscoin-cli getmempoolentry "mytxid"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmempoolentry", "params": ["mytxid"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getmempoolinfo`**

*`getmempoolinfo`*

Returns details on the active state of the TX memory pool.

```*Result:*```
{
  "size": xxxxx,               (numeric) Current tx count
  "bytes": xxxxx,              (numeric) Sum of all tx sizes
  "usage": xxxxx,              (numeric) Total memory usage for the mempool
  "maxmempool": xxxxx,         (numeric) Maximum memory usage for the mempool
  "mempoolminfee": xxxxx       (numeric) Minimum fee for tx to be accepted
}

```*Examples:*```
> syscoin-cli getmempoolinfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmempoolinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getrawmempool`**

*`getrawmempool ( verbose )`*

Returns all transaction ids in memory pool as a json array of string transaction ids.

Hint: use getmempoolentry to fetch a specific transaction from the mempool.

*Arguments:*```
1. verbose (boolean, optional, default=false) True for a json object, false for array of transaction ids

```*Result: (for verbose = false):*```
[                     (json array of string)
  "transactionid"     (string) The transaction id
  ,...
]

```*Result: (for verbose = true):*```
{                           (json object)
  "transactionid" : {       (json object)
    "size" : n,             (numeric) transaction size in bytes
    "fee" : n,              (numeric) transaction fee in SYS
    "modifiedfee" : n,      (numeric) transaction fee with fee deltas used for mining priority
    "time" : n,             (numeric) local time transaction entered pool in seconds since 1 Jan 1970 GMT
    "height" : n,           (numeric) block height when transaction entered pool
    "startingpriority" : n, (numeric) DEPRECATED. Priority when transaction entered pool
    "currentpriority" : n,  (numeric) DEPRECATED. Transaction priority now
    "descendantcount" : n,  (numeric) number of in-mempool descendant transactions (including this one)
    "descendantsize" : n,   (numeric) size of in-mempool descendants (including this one)
    "descendantfees" : n,   (numeric) modified fees (see above) of in-mempool descendants (including this one)
    "ancestorcount" : n,    (numeric) number of in-mempool ancestor transactions (including this one)
    "ancestorsize" : n,     (numeric) size of in-mempool ancestors (including this one)
    "ancestorfees" : n,     (numeric) modified fees (see above) of in-mempool ancestors (including this one)
    "depends" : [           (array) unconfirmed transactions used as inputs for this transaction
        "transactionid",    (string) parent transaction id
       ... ]
  }, ...
}

```*Examples:*```
> syscoin-cli getrawmempool true
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getrawmempool", "params": [true] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getspentinfo`**

*`getspentinfo`*

Returns the txid and index where an output is spent.

*Arguments:*```
{
  "txid" (string) The hex string of the txid
  "index" (number) The start block height
}

```*Result:*```
{
  "txid"  (string) The transaction id
  "index"  (number) The spending input index
  ,...
}

```*Examples:*```
> syscoin-cli getspentinfo '{"txid": "0437cd7f8525ceed2324359c2d0ba26006d92d856a9c20fa0241106ee5a597c9", "index": 0}'
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getspentinfo", "params": [{"txid": "0437cd7f8525ceed2324359c2d0ba26006d92d856a9c20fa0241106ee5a597c9", "index": 0}] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`gettxout`**

*`gettxout "txid" n ( include_mempool )`*

Returns details about an unspent transaction output.

*Arguments:*```
1. "txid"       (string, required) The transaction id
2. n              (numeric, required) vout number
3. include_mempool  (boolean, optional) Whether to include the mempool

```*Result:*```
{
  "bestblock" : "hash",    (string) the block hash
  "confirmations" : n,       (numeric) The number of confirmations
  "value" : x.xxx,           (numeric) The transaction value in SYS
  "scriptPubKey" : {         (json object)
     "asm" : "code",       (string) 
     "hex" : "hex",        (string) 
     "reqSigs" : n,          (numeric) Number of required signatures
     "type" : "pubkeyhash", (string) The type, eg pubkeyhash
     "addresses" : [          (array of string) array of syscoin addresses
        "address"     (string) syscoin address
        ,...
     ]
  },
  "version" : n,            (numeric) The version
  "coinbase" : true|false   (boolean) Coinbase or not
}

```*Examples:*```

Get unspent transactions
> syscoin-cli listunspent 

View the details
> syscoin-cli gettxout "txid" 1

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "gettxout", "params": ["txid", 1] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`gettxoutproof`**

*`gettxoutproof ["txid",...] ( blockhash )`*

Returns a hex-encoded proof that "txid" was included in a block.

NOTE: By default this function only works sometimes. This is when there is an
unspent output in the utxo for this transaction. To make it always work,
you need to maintain a transaction index, using the -txindex command line option or
specify the block in which the transaction is included manually (by blockhash).

*Arguments:*```
1. "txids"       (string) A json array of txids to filter
    [
      "txid"     (string) A transaction hash
      ,...
    ]
2. "blockhash"   (string, optional) If specified, looks for txid in the block with this hash

```*Result:*```
"data"           (string) A string that is a serialized, hex-encoded data for the proof.

```*Examples:*```
> syscoin-cli gettxoutproof '["mytxid",...]'
> syscoin-cli gettxoutproof '["mytxid",...]' "blockhash"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "gettxoutproof", "params": [["mytxid",...], "blockhash"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`gettxoutsetinfo`**

*`gettxoutsetinfo`*

Returns statistics about the unspent transaction output set.
Note this call may take some time.

```*Result:*```
{
  "height":n,     (numeric) The current block height (index)
  "bestblock": "hex",   (string) the best block hash hex
  "transactions": n,      (numeric) The number of transactions
  "txouts": n,            (numeric) The number of unspent transaction outputs
  "hash_serialized": "hash",   (string) The serialized hash
  "disk_size": n,         (numeric) The estimated size of the chainstate on disk
  "total_amount": x.xxx          (numeric) The total amount
}

```*Examples:*```
> syscoin-cli gettxoutsetinfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "gettxoutsetinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`preciousblock`**

*`preciousblock "blockhash"`*

Treats a block as if it were received before others with the same work.

A later preciousblock call can override the effect of an earlier one.

The effects of preciousblock are not retained across restarts.

*Arguments:*```
1. "blockhash"   (string, required) the hash of the block to mark as precious

```*Result:*```

```*Examples:*```
> syscoin-cli preciousblock "blockhash"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "preciousblock", "params": ["blockhash"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`pruneblockchain`**

*`pruneblockchain`*

*Arguments:*```
1. "height"       (numeric, required) The block height to prune up to. May be set to a discrete height, or a unix timestamp
                  to prune blocks whose block time is at least 2 hours older than the provided timestamp.

```*Result:*```
n    (numeric) Height of the last block pruned.

```*Examples:*```
> syscoin-cli pruneblockchain 1000
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "pruneblockchain", "params": [1000] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`verifychain`**

*`verifychain ( checklevel nblocks )`*

Verifies blockchain database.

*Arguments:*```
1. checklevel   (numeric, optional, 0-4, default=4) How thorough the block verification is.
2. nblocks      (numeric, optional, default=6, 0=all) The number of blocks to check.

```*Result:*```
true|false       (boolean) Verified or not

```*Examples:*```
> syscoin-cli verifychain 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "verifychain", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`verifytxoutproof`**

*`verifytxoutproof "proof"`*

Verifies that a proof points to a transaction in a block, returning the transaction it commits to
and throwing an RPC error if the block is not in our best chain

*Arguments:*```
1. "proof"    (string, required) The hex-encoded proof generated by gettxoutproof

```*Result:*```
["txid"]      (array, strings) The txid(s) which the proof commits to, or empty array if the proof is invalid

```*Examples:*```
> syscoin-cli verifytxoutproof "proof"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "gettxoutproof", "params": ["proof"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`



Control
==============================
## **`debug`**

*`debug ( 0|1|addrman|alert|bench|coindb|db|lock|rand|rpc|selectcoins|mempool|mempoolrej|net|proxy|prune|http|libevent|tor|zmq|syscoin|privatesend|instantsend|masternode|spork|keepass|mnpayments|gobject )`*
Change debug category on the fly. Specify single category or use '+' to specify many.

```*Examples:*```
> syscoin-cli debug syscoin
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "debug", "params": [syscoin+net] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getinfo`**

*`getinfo`*

DEPRECATED. Returns an object containing various state info.

```*Result:*```
{
  "version": xxxxx,           (numeric) the server version
  "dashversion": xxxxx,       (numeric) the server dashpay version
  "protocolversion": xxxxx,   (numeric) the protocol version
  "walletversion": xxxxx,     (numeric) the wallet version
  "balance": xxxxxxx,         (numeric) the total syscoin balance of the wallet
  "privatesend_balance": xxxxxx, (numeric) the anonymized syscoin balance of the wallet
  "blocks": xxxxxx,           (numeric) the current number of blocks processed in the server
  "timeoffset": xxxxx,        (numeric) the time offset
  "connections": xxxxx,       (numeric) the number of connections
  "proxy": "host:port",     (string, optional) the proxy used by the server
  "difficulty": xxxxxx,       (numeric) the current difficulty
  "testnet": true|false,      (boolean) if the server is using testnet or not
  "keypoololdest": xxxxxx,    (numeric) the timestamp (seconds since Unix epoch) of the oldest pre-generated key in the key pool
  "keypoolsize": xxxx,        (numeric) how many new keys are pre-generated
  "unlocked_until": ttt,      (numeric) the timestamp in seconds since epoch (midnight Jan 1 1970 GMT) that the wallet is unlocked for transfers, or 0 if the wallet is locked
  "paytxfee": x.xxxx,         (numeric) the transaction fee set in SYS/kB
  "relayfee": x.xxxx,         (numeric) minimum relay fee for non-free transactions in SYS/kB
  "errors": "..."           (string) any error messages
}

```*Examples:*```
> syscoin-cli getinfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getmemoryinfo`**

*`getmemoryinfo`*
Returns an object containing information about memory usage.

```*Result:*```
{
  "locked": {               (json object) Information about locked memory manager
    "used": xxxxx,          (numeric) Number of bytes used
    "free": xxxxx,          (numeric) Number of bytes available in current arenas
    "total": xxxxxxx,       (numeric) Total number of bytes managed
    "locked": xxxxxx,       (numeric) Amount of bytes that succeeded locking. If this number is smaller than total, locking pages failed at some point and key data could be swapped to disk.
    "chunks_used": xxxxx,   (numeric) Number allocated chunks
    "chunks_free": xxxxx,   (numeric) Number unused chunks
  }
}

```*Examples:*```
> syscoin-cli getmemoryinfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmemoryinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`help`**

*`help ( "command" )`*

List all commands, or get help for a specified command.

*Arguments:*```
1. "command"     (string, optional) The command to get help on

```*Result:*```
"text"     (string) The help text
\`\`\`

## **`stop`**

*`stop`*

Stop Syscoin Core server.
\`\`\`



Generating
==============================
## **`generate`**

*`generate nblocks ( maxtries )`*

Mine up to nblocks blocks immediately (before the RPC call returns) to an address in the wallet.

*Arguments:*```
1. nblocks      (numeric, required) How many blocks are generated immediately.
2. maxtries     (numeric, optional) How many iterations to try (default = 1000000).

```*Result:*```
[ blockhashes ]     (array) hashes of blocks generated

```*Examples:*```

Generate 11 blocks
> syscoin-cli generate 11
\`\`\`

## **`generatetoaddress`**

*`generatetoaddress nblocks address (maxtries)`*

Mine blocks immediately to a specified address (before the RPC call returns)

*Arguments:*```
1. nblocks      (numeric, required) How many blocks are generated immediately.
2. address      (string, required) The address to send the newly generated Syscoin to.
3. maxtries     (numeric, optional) How many iterations to try (default = 1000000).

```*Result:*```
[ blockhashes ]     (array) hashes of blocks generated

```*Examples:*```

Generate 11 blocks to myaddress
> syscoin-cli generatetoaddress 11 "myaddress"
\`\`\`



Mining
==============================
## **`createauxblock`**

*`createauxblock <address>`*

create a new block and return information required to merge-mine it.

*Arguments:*```
1. address      (string, required) specify coinbase transaction payout address

```*Result:*```
{
  "hash"               (string) hash of the created block
  "chainid"            (numeric) chain ID for this block
  "previousblockhash"  (string) hash of the previous block
  "coinbasevalue"      (numeric) value of the block's coinbase
  "bits"               (string) compressed target of the block
  "height"             (numeric) height of the block
  "_target"            (string) target in reversed byte order, deprecated
}

```*Examples:*```
> syscoin-cli createauxblock "address"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "createauxblock", "params": ["address"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getauxblock`**

*`getauxblock (hash auxpow)`*

Create or submit a merge-mined block.

Without arguments, create a new block and return information
required to merge-mine it.  With arguments, submit a solved
auxpow for a previously returned block.

*Arguments:*```
1. hash      (string, optional) hash of the block to submit
2. auxpow    (string, optional) serialised auxpow found

```*Result (without arguments):*```
{
  "hash"               (string) hash of the created block
  "chainid"            (numeric) chain ID for this block
  "previousblockhash"  (string) hash of the previous block
  "coinbasevalue"      (numeric) value of the block's coinbase
  "bits"               (string) compressed target of the block
  "height"             (numeric) height of the block
  "_target"            (string) target in reversed byte order, deprecated
}

```*Result (with arguments):*```
xxxxx        (boolean) whether the submitted block was correct

```*Examples:*```
> syscoin-cli getauxblock 
> syscoin-cli getauxblock "hash" "serialised auxpow"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getauxblock", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getblocktemplate`**

*`getblocktemplate ( TemplateRequest )`*

If the request parameters include a 'mode' key, that is used to explicitly select between the default 'template' request or a 'proposal'.
It returns data needed to construct a block to work on.
For full specification, see BIPs 22, 23, and 9:
    https://github.com/syscoin/bips/blob/master/bip-0022.mediawiki
    https://github.com/syscoin/bips/blob/master/bip-0023.mediawiki
    https://github.com/syscoin/bips/blob/master/bip-0009.mediawiki#getblocktemplate_changes

*Arguments:*```
1. template_request         (json object, optional) A json object in the following spec
     {
       "mode":"template"    (string, optional) This must be set to "template", "proposal" (see BIP 23), or omitted
       "capabilities":[     (array, optional) A list of strings
           "support"          (string) client side supported feature, 'longpoll', 'coinbasetxn', 'coinbasevalue', 'proposal', 'serverlist', 'workid'
           ,...
       ],
       "rules":[            (array, optional) A list of strings
           "support"          (string) client side supported softfork deployment
           ,...
       ]
     }


```*Result:*```
{
  "capabilities" : [ "capability", ... ],    (array of strings) specific client side supported features
  "version" : n,                    (numeric) The preferred block version
  "rules" : [ "rulename", ... ],    (array of strings) specific block rules that are to be enforced
  "vbavailable" : {                 (json object) set of pending, supported versionbit (BIP 9) softfork deployments
      "rulename" : bitnumber          (numeric) identifies the bit number as indicating acceptance and readiness for the named softfork rule
      ,...
  },
  "vbrequired" : n,                 (numeric) bit mask of versionbits the server requires set in submissions
  "previousblockhash" : "xxxx",     (string) The hash of current highest block
  "transactions" : [                (array) contents of non-coinbase transactions that should be included in the next block
      {
         "data" : "xxxx",             (string) transaction data encoded in hexadecimal (byte-for-byte)
         "hash" : "xxxx",             (string) hash/id encoded in little-endian hexadecimal
         "depends" : [                (array) array of numbers 
             n                          (numeric) transactions before this one (by 1-based index in 'transactions' list) that must be present in the final block if this one is
             ,...
         ],
         "fee": n,                    (numeric) difference in value between transaction inputs and outputs (in satoshis); for coinbase transactions, this is a negative Number of the total collected block fees (ie, not including the block subsidy); if key is not present, fee is unknown and clients MUST NOT assume there isn't one
         "sigops" : n,                (numeric) total number of SigOps, as counted for purposes of block limits; if key is not present, sigop count is unknown and clients MUST NOT assume there aren't any
         "required" : true|false      (boolean) if provided and true, this transaction must be in the final block
      }
      ,...
  ],
  "coinbaseaux" : {                 (json object) data that should be included in the coinbase's scriptSig content
      "flags" : "xx"                  (string) key name is to be ignored, and value included in scriptSig
  },
  "coinbasevalue" : n,              (numeric) maximum allowable input to coinbase transaction, including the generation award and transaction fees (in satoshis)
  "coinbasetxn" : { ... },          (json object) information for coinbase transaction
  "target" : "xxxx",                (string) The hash target
  "mintime" : xxx,                  (numeric) The minimum timestamp appropriate for next block time in seconds since epoch (Jan 1 1970 GMT)
  "mutable" : [                     (array of string) list of ways the block template may be changed 
     "value"                          (string) A way the block template may be changed, e.g. 'time', 'transactions', 'prevblock'
     ,...
  ],
  "noncerange" : "00000000ffffffff",(string) A range of valid nonces
  "sigoplimit" : n,                 (numeric) limit of sigops in blocks
  "sizelimit" : n,                  (numeric) limit of block size
  "curtime" : ttt,                  (numeric) current timestamp in seconds since epoch (Jan 1 1970 GMT)
  "bits" : "xxxxxxxx",              (string) compressed target of next block
  "height" : n                      (numeric) The height of the next block
  "masternode" : {                  (json object) required masternode payee that must be included in the next block
      "payee" : "xxxx",             (string) payee address
      "script" : "xxxx",            (string) payee scriptPubKey
      "amount": n                   (numeric) required amount to pay
  },
  "masternode_payments_started" :  true|false, (boolean) true, if masternode payments started
  "masternode_payments_enforced" : true|false, (boolean) true, if masternode payments are enforced
  "superblock" : [                  (array) required superblock payees that must be included in the next block
      {
         "payee" : "xxxx",          (string) payee address
         "script" : "xxxx",         (string) payee scriptPubKey
         "amount": n                (numeric) required amount to pay
      }
      ,...
  ],
  "superblocks_started" : true|false, (boolean) true, if superblock payments started
  "superblocks_enabled" : true|false  (boolean) true, if superblock payments are enabled
}

```*Examples:*```
> syscoin-cli getblocktemplate 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblocktemplate", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getmininginfo`**

*`getmininginfo`*

Returns a json object containing mining-related information.
```*Result:*```
{
  "blocks": nnn,             (numeric) The current block
  "currentblocksize": nnn,   (numeric) The last block size
  "currentblocktx": nnn,     (numeric) The last block transaction
  "difficulty": xxx.xxxxx    (numeric) The current difficulty
  "errors": "..."            (string) Current errors
  "networkhashps": nnn,      (numeric) The network hashes per second
  "pooledtx": n              (numeric) The size of the mempool
  "chain": "xxxx",           (string) current network name as defined in BIP70 (main, test, regtest)
}

```*Examples:*```
> syscoin-cli getmininginfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmininginfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getnetworkhashps`**

*`getnetworkhashps ( nblocks height )`*

Returns the estimated network hashes per second based on the last n blocks.
Pass in [blocks] to override # of blocks, -1 specifies since last difficulty change.
Pass in [height] to estimate the network speed at the time when a certain block was found.

*Arguments:*```
1. nblocks     (numeric, optional, default=120) The number of blocks, or -1 for blocks since last difficulty change.
2. height      (numeric, optional, default=-1) To estimate at the time of the given height.

```*Result:*```
x             (numeric) Hashes per second estimated

```*Examples:*```
> syscoin-cli getnetworkhashps 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnetworkhashps", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`prioritisetransaction`**

*`prioritisetransaction <txid> <priority delta> <fee delta>`*
Accepts the transaction into mined blocks at a higher (or lower) priority

*Arguments:*```
1. "txid"       (string, required) The transaction id.
2. priority_delta (numeric, required) The priority to add or subtract.
                  The transaction selection algorithm considers the tx as it would have a higher priority.
                  (priority of a transaction is calculated: coinage * value_in_satoshis / txsize) 
3. fee_delta      (numeric, required) The fee value (in satoshis) to add (or subtract, if negative).
                  The fee is not actually paid, only the algorithm for selecting transactions into a block
                  considers the transaction as it would have paid a higher (or lower) fee.

```*Result:*```
true              (boolean) Returns true

```*Examples:*```
> syscoin-cli prioritisetransaction "txid" 0.0 10000
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "prioritisetransaction", "params": ["txid", 0.0, 10000] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`submitauxblock`**

*`submitauxblock <hash> <auxpow>`*

submit a solved auxpow for a previously block created by 'createauxblock'.

*Arguments:*```
1. hash      (string, required) hash of the block to submit
2. auxpow    (string, required) serialised auxpow found

```*Result:*```
xxxxx        (boolean) whether the submitted block was correct

```*Examples:*```
> syscoin-cli submitauxblock "hash" "serialised auxpow"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "submitauxblock", "params": ["hash" "serialised auxpow"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`submitblock`**

*`submitblock "hexdata" ( "jsonparametersobject" )`*

Attempts to submit new block to network.
The 'jsonparametersobject' parameter is currently ignored.
See https://en.syscoin.it/wiki/BIP_0022 for full specification.

*Arguments:*```
1. "hexdata"        (string, required) the hex-encoded block data to submit
2. "parameters"     (string, optional) object of optional parameters
    {
      "workid" : "id"    (string, optional) if the server provided a workid, it MUST be included with submissions
    }

```*Result:*```

```*Examples:*```
> syscoin-cli submitblock "mydata"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "submitblock", "params": ["mydata"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`



Network
==============================
## **`addnode`**

*`addnode "node" "add|remove|onetry"`*

Attempts add or remove a node from the addnode list.
Or try a connection to a node once.

*Arguments:*```
1. "node"     (string, required) The node (see getpeerinfo for nodes)
2. "command"  (string, required) 'add' to add a node to the list, 'remove' to remove a node from the list, 'onetry' to try a connection to the node once

```*Examples:*```
> syscoin-cli addnode "192.168.0.6:8369" "onetry"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "addnode", "params": ["192.168.0.6:8369", "onetry"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`clearbanned`**

*`clearbanned`*

Clear all banned IPs.

```*Examples:*```
> syscoin-cli clearbanned 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "clearbanned", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`disconnectnode`**

*`disconnectnode "address" `*

Immediately disconnects from the specified node.

*Arguments:*```
1. "address"     (string, required) The IP address/port of the node

```*Examples:*```
> syscoin-cli disconnectnode "192.168.0.6:8369"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "disconnectnode", "params": ["192.168.0.6:8369"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getaddednodeinfo`**

*`getaddednodeinfo ( "node" )`*

Returns information about the given added node, or all added nodes
(note that onetry addnodes are not listed here)

*Arguments:*```
1. "node"   (string, optional) If provided, return information about this specific node, otherwise all nodes are returned.

```*Result:*```
[
  {
    "addednode" : "192.168.0.201",   (string) The node ip address or name (as provided to addnode)
    "connected" : true|false,          (boolean) If connected
    "addresses" : [                    (list of objects) Only when connected = true
       {
         "address" : "192.168.0.201:8369",  (string) The syscoin server IP and port we're connected to
         "connected" : "outbound"           (string) connection, inbound or outbound
       }
     ]
  }
  ,...
]

```*Examples:*```
> syscoin-cli getaddednodeinfo 
> syscoin-cli getaddednodeinfo "192.168.0.201"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddednodeinfo", "params": ["192.168.0.201"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getconnectioncount`**

*`getconnectioncount`*

Returns the number of connections to other nodes.

```*Result:*```
n          (numeric) The connection count

```*Examples:*```
> syscoin-cli getconnectioncount 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getconnectioncount", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getnettotals`**

*`getnettotals`*

Returns information about network traffic, including bytes in, bytes out,
and current time.

```*Result:*```
{
  "totalbytesrecv": n,   (numeric) Total bytes received
  "totalbytessent": n,   (numeric) Total bytes sent
  "timemillis": t,       (numeric) Current UNIX time in milliseconds
  "uploadtarget":
  {
    "timeframe": n,                         (numeric) Length of the measuring timeframe in seconds
    "target": n,                            (numeric) Target in bytes
    "target_reached": true|false,           (boolean) True if target is reached
    "serve_historical_blocks": true|false,  (boolean) True if serving historical blocks
    "bytes_left_in_cycle": t,               (numeric) Bytes left in current time cycle
    "time_left_in_cycle": t                 (numeric) Seconds left in current time cycle
  }
}

```*Examples:*```
> syscoin-cli getnettotals 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnettotals", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getnetworkinfo`**

*`getnetworkinfo`*
Returns an object containing various state info regarding P2P networking.

```*Result:*```
{
  "version": xxxxx,                      (numeric) the server version
  "subversion": "/Syscoin Core:x.x.x/",     (string) the server subversion string
  "protocolversion": xxxxx,              (numeric) the protocol version
  "localservices": "xxxxxxxxxxxxxxxx", (string) the services we offer to the network
  "localrelay": true|false,              (bool) true if transaction relay is requested from peers
  "timeoffset": xxxxx,                   (numeric) the time offset
  "connections": xxxxx,                  (numeric) the number of connections
  "networkactive": true|false,           (bool) whether p2p networking is enabled
  "networks": [                          (array) information per network
  {
    "name": "xxx",                     (string) network (ipv4, ipv6 or onion)
    "limited": true|false,               (boolean) is the network limited using -onlynet?
    "reachable": true|false,             (boolean) is the network reachable?
    "proxy": "host:port"               (string) the proxy that is used for this network, or empty if none
    "proxy_randomize_credentials": true|false,  (string) Whether randomized credentials are used
  }
  ,...
  ],
  "relayfee": x.xxxxxxxx,                (numeric) minimum relay fee for non-free transactions in SYS/kB
  "incrementalfee": x.xxxxxxxx,          (numeric) minimum fee increment for mempool limiting or BIP 125 replacement in SYS/kB
  "localaddresses": [                    (array) list of local addresses
  {
    "address": "xxxx",                 (string) network address
    "port": xxx,                         (numeric) network port
    "score": xxx                         (numeric) relative score
  }
  ,...
  ]
  "warnings": "..."                    (string) any network warnings
}

```*Examples:*```
> syscoin-cli getnetworkinfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnetworkinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getpeerinfo`**

*`getpeerinfo`*

Returns data about each connected network node as a json array of objects.

```*Result:*```
[
  {
    "id": n,                   (numeric) Peer index
    "addr":"host:port",      (string) The ip address and port of the peer
    "addrlocal":"ip:port",   (string) local address
    "services":"xxxxxxxxxxxxxxxx",   (string) The services offered
    "relaytxes":true|false,    (boolean) Whether peer has asked us to relay transactions to it
    "lastsend": ttt,           (numeric) The time in seconds since epoch (Jan 1 1970 GMT) of the last send
    "lastrecv": ttt,           (numeric) The time in seconds since epoch (Jan 1 1970 GMT) of the last receive
    "bytessent": n,            (numeric) The total bytes sent
    "bytesrecv": n,            (numeric) The total bytes received
    "conntime": ttt,           (numeric) The connection time in seconds since epoch (Jan 1 1970 GMT)
    "timeoffset": ttt,         (numeric) The time offset in seconds
    "pingtime": n,             (numeric) ping time (if available)
    "minping": n,              (numeric) minimum observed ping time (if any at all)
    "pingwait": n,             (numeric) ping wait (if non-zero)
    "version": v,              (numeric) The peer version, such as 7001
    "subver": "/Syscoin Core:x.x.x/",  (string) The string version
    "inbound": true|false,     (boolean) Inbound (true) or Outbound (false)
    "addnode": true|false,     (boolean) Whether connection was due to addnode and is using an addnode slot
    "startingheight": n,       (numeric) The starting height (block) of the peer
    "banscore": n,             (numeric) The ban score
    "synced_headers": n,       (numeric) The last header we have in common with this peer
    "synced_blocks": n,        (numeric) The last block we have in common with this peer
    "inflight": [
       n,                        (numeric) The heights of blocks we're currently asking from this peer
       ...
    ],
    "whitelisted": true|false, (boolean) Whether the peer is whitelisted
    "bytessent_per_msg": {
       "addr": n,              (numeric) The total bytes sent aggregated by message type
       ...
    },
    "bytesrecv_per_msg": {
       "addr": n,              (numeric) The total bytes received aggregated by message type
       ...
    }
  }
  ,...
]

```*Examples:*```
> syscoin-cli getpeerinfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getpeerinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`listbanned`**

*`listbanned`*

List all banned IPs/Subnets.

```*Examples:*```
> syscoin-cli listbanned 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listbanned", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`ping`**

*`ping`*

Requests that a ping be sent to all other nodes, to measure ping time.
```*Results provided in getpeerinfo, pingtime and pingwait fields are decimal seconds.*```
Ping command is handled in queue with all other commands, so it measures processing backlog, not just network ping.

```*Examples:*```
> syscoin-cli ping 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "ping", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`setban`**

*`setban "subnet" "add|remove" (bantime) (absolute)`*

Attempts add or remove a IP/Subnet from the banned list.

*Arguments:*```
1. "subnet"       (string, required) The IP/Subnet (see getpeerinfo for nodes ip) with a optional netmask (default is /32 = single ip)
2. "command"      (string, required) 'add' to add a IP/Subnet to the list, 'remove' to remove a IP/Subnet from the list
3. "bantime"      (numeric, optional) time in seconds how long (or until when if [absolute] is set) the ip is banned (0 or empty means using the default time of 24h which can also be overwritten by the -bantime startup argument)
4. "absolute"     (boolean, optional) If set, the bantime must be a absolute timestamp in seconds since epoch (Jan 1 1970 GMT)

```*Examples:*```
> syscoin-cli setban "192.168.0.6" "add" 86400
> syscoin-cli setban "192.168.0.0/24" "add"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "setban", "params": ["192.168.0.6", "add", 86400] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`setnetworkactive`**

*`setnetworkactive true|false`*

Disable/enable all p2p network activity.

*Arguments:*```
1. "state"        (boolean, required) true to enable networking, false to disable
\`\`\`



Rawtransactions
==============================
## **`createrawtransaction`**

*`createrawtransaction [{"txid":"id","vout":n},...] {"address":amount,"data":"hex",...} ( locktime )`*

Create a transaction spending the given inputs and creating new outputs.
Outputs can be addresses or data.
Returns hex-encoded raw transaction.
Note that the transaction's inputs are not signed, and
it is not stored in the wallet or transmitted to the network.

*Arguments:*```
1. "inputs"                (array, required) A json array of json objects
     [
       {
         "txid":"id",    (string, required) The transaction id
         "vout":n,         (numeric, required) The output number
         "sequence":n      (numeric, optional) The sequence number
       } 
       ,...
     ]
2. "outputs"               (object, required) a json object with outputs
    {
      "address": x.xxx,    (numeric or string, required) The key is the syscoin address, the numeric value (can be string) is the SYS amount
      "data": "hex"      (string, required) The key is "data", the value is hex encoded data
      ,...
    }
3. locktime                  (numeric, optional, default=0) Raw locktime. Non-0 value also locktime-activates inputs

```*Result:*```
"transaction"              (string) hex string of the transaction

```*Examples:*```
> syscoin-cli createrawtransaction "[{\"txid\":\"myid\",\"vout\":0}]" "{\"address\":0.01}"
> syscoin-cli createrawtransaction "[{\"txid\":\"myid\",\"vout\":0}]" "{\"data\":\"00010203\"}"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "createrawtransaction", "params": ["[{\"txid\":\"myid\",\"vout\":0}]", "{\"address\":0.01}"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "createrawtransaction", "params": ["[{\"txid\":\"myid\",\"vout\":0}]", "{\"data\":\"00010203\"}"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`decoderawtransaction`**

*`decoderawtransaction "hexstring"`*

Return a JSON object representing the serialized, hex-encoded transaction.

*Arguments:*```
1. "hexstring"      (string, required) The transaction hex string

```*Result:*```
{
  "txid" : "id",        (string) The transaction id
  "size" : n,             (numeric) The transaction size
  "version" : n,          (numeric) The version
  "locktime" : ttt,       (numeric) The lock time
  "vin" : [               (array of json objects)
     {
       "txid": "id",    (string) The transaction id
       "vout": n,         (numeric) The output number
       "scriptSig": {     (json object) The script
         "asm": "asm",  (string) asm
         "hex": "hex"   (string) hex
       },
       "sequence": n     (numeric) The script sequence number
     }
     ,...
  ],
  "vout" : [             (array of json objects)
     {
       "value" : x.xxx,            (numeric) The value in SYS
       "n" : n,                    (numeric) index
       "scriptPubKey" : {          (json object)
         "asm" : "asm",          (string) the asm
         "hex" : "hex",          (string) the hex
         "reqSigs" : n,            (numeric) The required sigs
         "type" : "pubkeyhash",  (string) The type, eg 'pubkeyhash'
         "addresses" : [           (json array of string)
           "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG"   (string) Syscoin address
           ,...
         ]
       }
     }
     ,...
  ],
}

```*Examples:*```
> syscoin-cli decoderawtransaction "hexstring"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "decoderawtransaction", "params": ["hexstring"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`decodescript`**

*`decodescript "hexstring"`*

Decode a hex-encoded script.

*Arguments:*```
1. "hexstring"     (string) the hex encoded script

```*Result:*```
{
  "asm":"asm",   (string) Script public key
  "hex":"hex",   (string) hex encoded public key
  "type":"type", (string) The output type
  "reqSigs": n,    (numeric) The required signatures
  "addresses": [   (json array of string)
     "address"     (string) syscoin address
     ,...
  ],
  "p2sh","address" (string) address of P2SH script wrapping this redeem script (not returned if the script is already a P2SH).
}

```*Examples:*```
> syscoin-cli decodescript "hexstring"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "decodescript", "params": ["hexstring"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`fundrawtransaction`**

*`fundrawtransaction "hexstring" ( options )`*

Add inputs to a transaction until it has enough in value to meet its out value.
This will not modify existing inputs, and will add at most one change output to the outputs.
No existing outputs will be modified unless "subtractFeeFromOutputs" is specified.
Note that inputs which were signed may need to be resigned after completion since in/outputs have been added.
The inputs added will not be signed, use signrawtransaction for that.
Note that all existing inputs must have their previous output transaction be in the wallet.
Note that all inputs selected must be of standard form and P2SH scripts must be
in the wallet using importaddress or addmultisigaddress (to calculate fees).
You can see whether this is the case by checking the "solvable" field in the listunspent output.
Only pay-to-pubkey, multisig, and P2SH versions thereof are currently supported for watch-only

*Arguments:*```
1. "hexstring"           (string, required) The hex string of the raw transaction
2. options                 (object, optional)
   {
     "changeAddress"          (string, optional, default pool address) The syscoin address to receive the change
     "changePosition"         (numeric, optional, default random) The index of the change output
     "includeWatching"        (boolean, optional, default false) Also select inputs which are watch only
     "lockUnspents"           (boolean, optional, default false) Lock selected unspent outputs
     "reserveChangeKey"       (boolean, optional, default true) Reserves the change output key from the keypool
     "feeRate"                (numeric, optional, default not set: makes wallet determine the fee) Set a specific feerate (SYS per KB)
     "subtractFeeFromOutputs" (array, optional) A json array of integers.
                              The fee will be equally deducted from the amount of each specified output.
                              The outputs are specified by their zero-based index, before any change output is added.
                              Those recipients will receive less syscoin than you enter in their corresponding amount field.
                              If no outputs are specified here, the sender pays the fee.
                                  [vout_index,...]
   }
                         for backward compatibility: passing in a true instead of an object will result in {"includeWatching":true}

```*Result:*```
{
  "hex":       "value", (string)  The resulting raw transaction (hex-encoded string)
  "fee":       n,         (numeric) Fee in SYS the resulting transaction pays
  "changepos": n          (numeric) The position of the added change output, or -1
}

```*Examples:*```

Create a transaction with no inputs
> syscoin-cli createrawtransaction "[]" "{\"myaddress\":0.01}"

Add sufficient unsigned inputs to meet the output value
> syscoin-cli fundrawtransaction "rawtransactionhex"

Sign the transaction
> syscoin-cli signrawtransaction "fundedtransactionhex"

Send the transaction
> syscoin-cli sendrawtransaction "signedtransactionhex"
\`\`\`

## **`getrawtransaction`**

*`getrawtransaction "txid" ( verbose )`*

NOTE: By default this function only works for mempool transactions. If the -txindex option is
enabled, it also works for blockchain transactions.
DEPRECATED: for now, it also works for transactions with unspent outputs.

Return the raw transaction data.

If verbose is 'true', returns an Object with information about 'txid'.
If verbose is 'false' or omitted, returns a string that is serialized, hex-encoded data for 'txid'.

*Arguments:*```
1. "txid"      (string, required) The transaction id
2. verbose       (bool, optional, default=false) If false, return a string, otherwise return a json object

```*Result (if verbose is not set or set to false):*```
"data"      (string) The serialized, hex-encoded data for 'txid'

```*Result (if verbose is set to true):*```
{
  "hex" : "data",       (string) The serialized, hex-encoded data for 'txid'
  "txid" : "id",        (string) The transaction id (same as provided)
  "size" : n,             (numeric) The transaction size
  "version" : n,          (numeric) The version
  "locktime" : ttt,       (numeric) The lock time
  "vin" : [               (array of json objects)
     {
       "txid": "id",    (string) The transaction id
       "vout": n,         (numeric) 
       "scriptSig": {     (json object) The script
         "asm": "asm",  (string) asm
         "hex": "hex"   (string) hex
       },
       "sequence": n      (numeric) The script sequence number
     }
     ,...
  ],
  "vout" : [              (array of json objects)
     {
       "value" : x.xxx,            (numeric) The value in SYS
       "n" : n,                    (numeric) index
       "scriptPubKey" : {          (json object)
         "asm" : "asm",          (string) the asm
         "hex" : "hex",          (string) the hex
         "reqSigs" : n,            (numeric) The required sigs
         "type" : "pubkeyhash",  (string) The type, eg 'pubkeyhash'
         "addresses" : [           (json array of string)
           "address"        (string) syscoin address
           ,...
         ]
       }
     }
     ,...
  ],
  "blockhash" : "hash",   (string) the block hash
  "confirmations" : n,      (numeric) The confirmations
  "time" : ttt,             (numeric) The transaction time in seconds since epoch (Jan 1 1970 GMT)
  "blocktime" : ttt         (numeric) The block time in seconds since epoch (Jan 1 1970 GMT)
}

```*Examples:*```
> syscoin-cli getrawtransaction "mytxid"
> syscoin-cli getrawtransaction "mytxid" true
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getrawtransaction", "params": ["mytxid", true] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`sendrawtransaction`**

*`sendrawtransaction "hexstring" ( allowhighfees instantsend )`*

Submits raw transaction (serialized, hex-encoded) to local node and network.

Also see createrawtransaction and signrawtransaction calls.

*Arguments:*```
1. "hexstring"    (string, required) The hex string of the raw transaction)
2. allowhighfees  (boolean, optional, default=false) Allow high fees
3. instantsend    (boolean, optional, default=false) Use InstantSend to send this transaction

```*Result:*```
"hex"             (string) The transaction hash in hex

```*Examples:*```

Create a transaction
> syscoin-cli createrawtransaction "[{\"txid\" : \"mytxid\",\"vout\":0}]" "{\"myaddress\":0.01}"
Sign the transaction, and get back the hex
> syscoin-cli signrawtransaction "myhex"

Send the transaction (signed hex)
> syscoin-cli sendrawtransaction "signedhex"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendrawtransaction", "params": ["signedhex"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`signrawtransaction`**

*`signrawtransaction "hexstring" ( [{"txid":"id","vout":n,"scriptPubKey":"hex","redeemScript":"hex"},...] ["privatekey1",...] sighashtype )`*

Sign inputs for raw transaction (serialized, hex-encoded).
The second optional argument (may be null) is an array of previous transaction outputs that
this transaction depends on but may not yet be in the block chain.
The third optional argument (may be null) is an array of base58-encoded private
keys that, if given, will be the only keys used to sign the transaction.

Requires wallet passphrase to be set with walletpassphrase call.

*Arguments:*```
1. "hexstring"     (string, required) The transaction hex string
2. "prevtxs"       (string, optional) An json array of previous dependent transaction outputs
     [               (json array of json objects, or 'null' if none provided)
       {
         "txid":"id",             (string, required) The transaction id
         "vout":n,                  (numeric, required) The output number
         "scriptPubKey": "hex",   (string, required) script key
         "redeemScript": "hex"    (string, required for P2SH) redeem script
       }
       ,...
    ]
3. "privkeys"     (string, optional) A json array of base58-encoded private keys for signing
    [                  (json array of strings, or 'null' if none provided)
      "privatekey"   (string) private key in base58-encoding
      ,...
    ]
4. "sighashtype"     (string, optional, default=ALL) The signature hash type. Must be one of
       "ALL"
       "NONE"
       "SINGLE"
       "ALL|ANYONECANPAY"
       "NONE|ANYONECANPAY"
       "SINGLE|ANYONECANPAY"

```*Result:*```
{
  "hex" : "value",           (string) The hex-encoded raw transaction with signature(s)
  "complete" : true|false,   (boolean) If the transaction has a complete set of signatures
  "errors" : [                 (json array of objects) Script verification errors (if there are any)
    {
      "txid" : "hash",           (string) The hash of the referenced, previous transaction
      "vout" : n,                (numeric) The index of the output to spent and used as input
      "scriptSig" : "hex",       (string) The hex-encoded signature script
      "sequence" : n,            (numeric) Script sequence number
      "error" : "text"           (string) Verification or signing error related to the input
    }
    ,...
  ]
}

```*Examples:*```
> syscoin-cli signrawtransaction "myhex"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "signrawtransaction", "params": ["myhex"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`



Syscoin
==============================
## **`getgovernanceinfo`**

*`getgovernanceinfo`*
Returns an object containing governance parameters.

```*Result:*```
{
  "governanceminquorum": xxxxx,           (numeric) the absolute minimum number of votes needed to trigger a governance action
  "masternodewatchdogmaxseconds": xxxxx,  (numeric) sentinel watchdog expiration time in seconds (DEPRECATED)
  "sentinelpingmaxseconds": xxxxx,        (numeric) sentinel ping expiration time in seconds
  "proposalfee": xxx.xx,                  (numeric) the collateral transaction fee which must be paid to create a proposal in SYS
  "superblockcycle": xxxxx,               (numeric) the number of blocks between superblocks
  "lastsuperblock": xxxxx,                (numeric) the block number of the last superblock
  "nextsuperblock": xxxxx,                (numeric) the block number of the next superblock
  "maxgovobjdatasize": xxxxx,             (numeric) maximum governance object data size in bytes
}

```*Examples:*```
> syscoin-cli getgovernanceinfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getgovernanceinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getpoolinfo`**

*`getpoolinfo`*
Returns an object containing mixing pool related information.
\`\`\`

## **`getsuperblockbudget`**

*`getsuperblockbudget index`*

Returns the absolute maximum sum of superblock payments allowed.

*Arguments:*```
1. index         (numeric, required) The block index

```*Result:*```
n                (numeric) The absolute maximum sum of superblock payments allowed, in SYS

```*Examples:*```
> syscoin-cli getsuperblockbudget 1000
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getsuperblockbudget", "params": [1000] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`gobject`**

*`gobject "command"...`*
Manage governance objects

Available commands:
  check              - Validate governance object data (proposal only)
  prepare            - Prepare governance object by signing and creating tx
  submit             - Submit governance object to network
  deserialize        - Deserialize governance object from hex string to JSON
  count              - Count governance objects and votes (additional param: 'json' or 'all', default: 'json')
  get                - Get governance object by hash
  getvotes           - Get all votes for a governance object hash (including old votes)
  getcurrentvotes    - Get only current (tallying) votes for a governance object hash (does not include old votes)
  list               - List governance objects (can be filtered by signal and/or object type)
  diff               - List differences since last diff
  vote-name         - Vote on a governance object by masternode name (using masternode.conf setup)
  vote-conf          - Vote on a governance object by masternode configured in syscoin.conf
  vote-many          - Vote on a governance object by all masternodes (using masternode.conf setup)
\`\`\`

## **`masternode`**

*`masternode "command"...`*
Set of commands to execute masternode related actions

*Arguments:*```
1. "command"        (string or set of strings, required) The command to execute

Available commands:
  count        - Get information about number of masternodes (DEPRECATED options: 'total', 'ps', 'enabled', 'qualify', 'all')
  current      - Print info on current masternode winner to be paid the next block (calculated locally)
  genkey       - Generate new masternodeprivkey
  outputs      - Print masternode compatible outputs
  initialize  - Start single remote masternode by assigned name configured in masternode.conf
  start-<mode> - Start remote masternodes configured in masternode.conf (<mode>: 'all', 'missing', 'disabled')
  status       - Print masternode status information
  list         - Print list of all known masternodes (see masternodelist for more info)
  list-conf    - Print masternode.conf in JSON format
  winner       - Print info on next masternode winner to vote for
  winners      - Print list of masternode winners
\`\`\`

## **`masternodebroadcast`**

*`masternodebroadcast "command"...`*
Set of commands to create and relay masternode broadcast messages

*Arguments:*```
1. "command"        (string or set of strings, required) The command to execute

Available commands:
  create-name  - Create single remote masternode broadcast message by assigned name configured in masternode.conf
  create-all    - Create remote masternode broadcast messages for all masternodes configured in masternode.conf
  decode        - Decode masternode broadcast message
  relay         - Relay masternode broadcast message to the network
\`\`\`

## **`masternodelist`**

*`masternodelist ( "mode" "filter" )`*
Get a list of masternodes in different modes

*Arguments:*```
1. "mode"      (string, optional/required to use filter, defaults = json) The mode to run list in
2. "filter"    (string, optional) Filter results. Partial match by outpoint by default in all modes,
                                    additional matches in some modes are also available

Available modes:
  activeseconds  - Print number of seconds masternode recognized by the network as enabled
                   (since latest issued "masternode start/start-many/initialize")
  addr           - Print ip address associated with a masternode (can be additionally filtered, partial match)
  daemon         - Print daemon version of a masternode (can be additionally filtered, exact match)
  full           - Print info in format 'status protocol payee lastseen activeseconds lastpaidtime lastpaidblock IP'
                   (can be additionally filtered, partial match)
  info           - Print info in format 'status protocol payee lastseen activeseconds sentinelversion sentinelstate IP'
                   (can be additionally filtered, partial match)
  json           - Print info in JSON format (can be additionally filtered, partial match)
  lastpaidblock  - Print the last block height a node was paid on the network
  lastpaidtime   - Print the last time a node was paid on the network
  lastseen       - Print timestamp of when a masternode was last seen on the network
  payee          - Print Syscoin address associated with a masternode (can be additionally filtered,
                   partial match)
  protocol       - Print protocol of a masternode (can be additionally filtered, exact match)
  pubkey         - Print the masternode (not collateral) public key
  rank           - Print rank of a masternode based on current block
  sentinel       - Print sentinel version of a masternode (can be additionally filtered, exact match)
  status         - Print masternode status: PRE_ENABLED / ENABLED / EXPIRED / SENTINEL_PING_EXPIRED / NEW_START_REQUIRED /
                   UPDATE_REQUIRED / POSE_BAN / OUTPOINT_SPENT (can be additionally filtered, partial match)
\`\`\`

## **`mnsync`**

*`mnsync [status|next|reset]`*
Returns the sync status, updates to the next step or resets it entirely.
\`\`\`

## **`privatesend`**

*`privatesend "command"`*

*Arguments:*```
1. "command"        (string or set of strings, required) The command to execute

Available commands:
  start       - Start mixing
  stop        - Stop mixing
  reset       - Reset mixing
\`\`\`

## **`sentinelping`**

*`sentinelping version`*

Sentinel ping.

*Arguments:*```
1. version           (string, required) Sentinel version in the form "x.x.x"

```*Result:*```
state                (boolean) Ping result

```*Examples:*```
> syscoin-cli sentinelping 1.0.2
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sentinelping", "params": [1.0.2] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`spork`**

*`spork "command"`*

Shows information about current state of sporks

*Arguments:*```
1. "command"                     (string, required) 'show' to show all current spork values, 'active' to show which sporks are active

```*Result:*```
For 'show':
{
  "SPORK_NAME" : spork_value,    (number) The value of the specific spork with the name SPORK_NAME
  ...
}
For 'active':
{
  "SPORK_NAME" : true|false,     (boolean) 'true' for time-based sporks if spork is active and 'false' otherwise
  ...
}

```*Examples:*```
> syscoin-cli spork show
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "spork", "params": ["show"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`voteraw`**

*`voteraw <masternode-tx-hash> <masternode-tx-index> <governance-hash> <vote-signal> [yes|no|abstain] <time> <vote-sig>`*
Compile and relay a governance vote with provided external signature instead of signing vote internally
\`\`\`



Util
==============================
## **`createmultisig`**

*`createmultisig nrequired ["key",...]`*

Creates a multi-signature address with n signature of m keys required.
It returns a json object with the address and redeemScript.

*Arguments:*```
1. nrequired      (numeric, required) The number of required signatures out of the n keys or addresses.
2. "keys"       (string, required) A json array of keys which are syscoin addresses or hex-encoded public keys
     [
       "key"    (string) syscoin address or hex-encoded public key
       ,...
     ]

```*Result:*```
{
  "address":"multisigaddress",  (string) The value of the new multisig address.
  "redeemScript":"script"       (string) The string value of the hex-encoded redemption script.
}

```*Examples:*```

Create a multisig address from 2 addresses
> syscoin-cli createmultisig 2 "[\"Xt4qk9uKvQYAonVGSZNXqxeDmtjaEWgfrs\",\"XoSoWQkpgLpppPoyyzbUFh1fq2RBvW6UK1\"]"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "createmultisig", "params": [2, "[\"Xt4qk9uKvQYAonVGSZNXqxeDmtjaEWgfrs\",\"XoSoWQkpgLpppPoyyzbUFh1fq2RBvW6UK1\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`estimatefee`**

*`estimatefee nblocks`*

Estimates the approximate fee per kilobyte needed for a transaction to begin
confirmation within nblocks blocks.

*Arguments:*```
1. nblocks     (numeric, required)

```*Result:*```
n              (numeric) estimated fee-per-kilobyte

A negative value is returned if not enough transactions and blocks
have been observed to make an estimate.
-1 is always returned for nblocks == 1 as it is impossible to calculate
a fee that is high enough to get reliably included in the next block.

Example:
> syscoin-cli estimatefee 6
\`\`\`

## **`estimatepriority`**

*`estimatepriority nblocks`*

DEPRECATED. Estimates the approximate priority a zero-fee transaction needs to begin
confirmation within nblocks blocks.

*Arguments:*```
1. nblocks     (numeric, required)

```*Result:*```
n              (numeric) estimated priority

A negative value is returned if not enough transactions and blocks
have been observed to make an estimate.

Example:
> syscoin-cli estimatepriority 6
\`\`\`

## **`estimatesmartfee`**

*`estimatesmartfee nblocks`*

WARNING: This interface is unstable and may disappear or change!

Estimates the approximate fee per kilobyte needed for a transaction to begin
confirmation within nblocks blocks if possible and return the number of blocks
for which the estimate is valid.

*Arguments:*```
1. nblocks     (numeric)

```*Result:*```
{
  "feerate" : x.x,     (numeric) estimate fee-per-kilobyte (in SYS)
  "blocks" : n         (numeric) block number where estimate was found
}

A negative value is returned if not enough transactions and blocks
have been observed to make an estimate for any number of blocks.
However it will not return a value below the mempool reject fee.

Example:
> syscoin-cli estimatesmartfee 6
\`\`\`

## **`estimatesmartpriority`**

*`estimatesmartpriority nblocks`*

DEPRECATED. WARNING: This interface is unstable and may disappear or change!

Estimates the approximate priority a zero-fee transaction needs to begin
confirmation within nblocks blocks if possible and return the number of blocks
for which the estimate is valid.

*Arguments:*```
1. nblocks     (numeric, required)

```*Result:*```
{
  "priority" : x.x,    (numeric) estimated priority
  "blocks" : n         (numeric) block number where estimate was found
}

A negative value is returned if not enough transactions and blocks
have been observed to make an estimate for any number of blocks.
However if the mempool reject fee is set it will return 1e9 * MAX_MONEY.

Example:
> syscoin-cli estimatesmartpriority 6
\`\`\`

## **`signmessagewithprivkey`**

*`signmessagewithprivkey "privkey" "message"`*

Sign a message with the private key of an address

*Arguments:*```
1. "privkey"         (string, required) The private key to sign the message with.
2. "message"         (string, required) The message to create a signature of.

```*Result:*```
"signature"          (string) The signature of the message encoded in base 64

```*Examples:*```

Create the signature
> syscoin-cli signmessagewithprivkey "privkey" "my message"

Verify the signature
> syscoin-cli verifymessage "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" "signature" "my message"

As json rpc
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "signmessagewithprivkey", "params": ["privkey", "my message"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`validateaddress`**

*`validateaddress "address"`*

Return information about the given syscoin address.

*Arguments:*```
1. "address"     (string, required) The syscoin address to validate

```*Result:*```
{
  "isvalid" : true|false,       (boolean) If the address is valid or not. If not, this is the only property returned.
  "address" : "syscoinaddress", (string) The syscoin address validated
  "zaddress" : "syscoinaddress", (string) The zcash t-addr associated with this syscoin address validated
  "btcaddress" : "syscoinaddress", (string) The bitcoin address associated with this syscoin address validated
  "alias" : "syscoinalias", (string) The syscoin alias associated with this syscoin address validated
  "scriptPubKey" : "hex",       (string) The hex encoded scriptPubKey generated by the address
  "ismine" : true|false,        (boolean) If the address is yours or not
  "iswatchonly" : true|false,   (boolean) If the address is watchonly
  "isscript" : true|false,      (boolean) If the key is a script
  "pubkey" : "publickeyhex",    (string) The hex value of the raw public key
  "iscompressed" : true|false,  (boolean) If the address is compressed
  "account" : "account"         (string) DEPRECATED. The account associated with the address, "" is the default account
  "timestamp" : timestamp,        (number, optional) The creation time of the key if available in seconds since epoch (Jan 1 1970 GMT)
  "hdkeypath" : "keypath"       (string, optional) The HD keypath if the key is HD and available
  "hdchainid" : "<hash>"        (string, optional) The ID of the HD chain
}

```*Examples:*```
> syscoin-cli validateaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "validateaddress", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`verifymessage`**

*`verifymessage "address" "signature" "message"`*

Verify a signed message

*Arguments:*```
1. "address"         (string, required) The syscoin address to use for the signature.
2. "signature"       (string, required) The signature provided by the signer in base 64 encoding (see signmessage).
3. "message"         (string, required) The message that was signed.

```*Result:*```
true|false   (boolean) If the signature is verified or not.

```*Examples:*```

Unlock the wallet for 30 seconds
> syscoin-cli walletpassphrase "mypassphrase" 30

Create the signature
> syscoin-cli signmessage "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" "my message"

Verify the signature
> syscoin-cli verifymessage "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" "signature" "my message"

As json rpc
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "verifymessage", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", "signature", "my message"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`



Wallet
==============================
## **`abandontransaction`**

*`abandontransaction "txid"`*

Mark in-wallet transaction <txid> as abandoned
This will mark this transaction and all its in-wallet descendants as abandoned which will allow
for their inputs to be respent.  It can be used to replace "stuck" or evicted transactions.
It only works on transactions which are not included in a block and are not currently in the mempool.
It has no effect on transactions which are already conflicted or abandoned.

*Arguments:*```
1. "txid"    (string, required) The transaction id

```*Result:*```

```*Examples:*```
> syscoin-cli abandontransaction "1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "abandontransaction", "params": ["1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`addmultisigaddress`**

*`addmultisigaddress nrequired ["key",...] ( "account" )`*

Add a nrequired-to-sign multisignature address to the wallet.
Each key is a Syscoin address or hex-encoded public key.
If 'account' is specified (DEPRECATED), assign address to that account.

*Arguments:*```
1. nrequired        (numeric, required) The number of required signatures out of the n keys or addresses.
2. "keys"         (string, required) A json array of syscoin addresses or hex-encoded public keys
     [
       "address"  (string) syscoin address or hex-encoded public key
       ...,
     ]
3. "account"      (string, optional) DEPRECATED. An account to assign the addresses to.

```*Result:*```
"address"         (string) A syscoin address associated with the keys.

```*Examples:*```

Add a multisig address from 2 addresses
> syscoin-cli addmultisigaddress 2 "[\"Xt4qk9uKvQYAonVGSZNXqxeDmtjaEWgfrS\",\"XoSoWQkpgLpppPoyyzbUFh1fq2RBvW6UK2\"]"

As json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "addmultisigaddress", "params": [2, "[\"Xt4qk9uKvQYAonVGSZNXqxeDmtjaEWgfrS\",\"XoSoWQkpgLpppPoyyzbUFh1fq2RBvW6UK2\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`aliasaddscript`**

*`aliasaddscript redeemscript`*
Add redeemscript to local wallet for signing smart contract based alias transactions.
\`\`\`

## **`aliasbalance`**

*`aliasbalance "alias"`*

Returns the total amount received by the given alias in transactions.

*Arguments:*```
1. "alias"  (string, required) The syscoin alias for transactions.
2. "instantsend"  (boolean, optional) Check for balance available to instant send. Default is false.
\`\`\`

## **`aliasbalancemulti`**

*`aliasbalancemulti { "aliases" : ["aliasname1","aliasname2",...] } instantsend`*

Returns an array of balances based on an array of aliases passed in, internally calls aliasbalance for each alias.

*Arguments:*```
1. "aliases"  (array, required) The syscoin aliases to find balances for. Must be an array.
2. "instantsend"  (boolean, optional) Check for balance available to instant send. Default is false.
\`\`\`

## **`aliasclearwhitelist`**

*`aliasclearwhitelist [owner alias] [witness]`*
Clear your whitelist(controls who can resell).

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`aliasinfo`**

*`aliasinfo <aliasname>`*
Show values of an alias.
\`\`\`

## **`aliasnew`**

*`aliasnew [aliasname] [public value] [accept_transfers_flags=3] [expire_timestamp] [address] [encryption_privatekey] [encryption_publickey] [witness]`*
<aliasname> alias name.
<public value> alias public profile data, 256 characters max.
<accept_transfers_flags> 0 for none, 1 for accepting certificate transfers, 2 for accepting asset transfers and 3 for all. Default is 3.
<expire_timestamp> Epoch time when to expire alias. It is exponentially more expensive per year, calculation is FEERATE*(2.88^years). FEERATE is the dynamic satoshi per byte fee set in the rate peg alias used for this alias. Defaults to 1 hour.
<address> Address for this alias.
<encryption_privatekey> Encrypted private key used for encryption/decryption of private data related to this alias. Should be encrypted to publickey.
<encryption_publickey> Public key used for encryption/decryption of private data related to this alias.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`aliaspay`**

*`aliaspay aliasfrom {"address":amount,...} (instantsend subtractfeefromamount)`*

Send multiple times from an alias. Amounts are double-precision floating point numbers.
Requires wallet passphrase to be set with walletpassphrase call.

*Arguments:*```
1. "aliasfrom"			(string, required) Alias to pay from
2. "amounts"             (string, required) A json object with aliases and amounts
    {
      "address":amount   (numeric or string) The syscoin address is the key, the numeric amount (can be string) in SYS is the value
      ,...
    }
3. instantsend				(boolean, optional) Set to true to use InstantSend to send this transaction or false otherwise. Default is false.
4. subtractfeefromamount   (string, optional) A json array with addresses.
                           The fee will be equally deducted from the amount of each selected address.
                           Those recipients will receive less syscoins than you enter in their corresponding amount field.
                           If no addresses are specified here, the sender pays the fee.
    [
      "address"            (string) Subtract fee from this address
      ,...
    ]

```*Result:*```
"transaction hex"          (string) The transaction hex (unsigned) for signing and sending. Only 1 transaction is created regardless of 
                                    the number of addresses.

```*Examples:*```

Send two amounts to two different aliases:
> syscoin-cli aliaspay "senderalias" "{\"alias1\":0.01,\"alias2\":0.02}"

Send two amounts to two different addresses setting IS and comment:
> syscoin-cli aliaspay "senderalias" "{\"Sa8H1Mq4pd6z3N4xFzxvVah9AWzZyykJiJ\":0.01,\"SkbcpmjqkERwvPPqke3puu9k9bCdHLaVoP\":0.02}" true "testing"

Send two amounts to two different addresses, subtract fee from amount:
> syscoin-cli aliaspay "senderalias" "{\"Sa8H1Mq4pd6z3N4xFzxvVah9AWzZyykJiJ\":0.01,\"SkbcpmjqkERwvPPqke3puu9k9bCdHLaVoP\":0.02}" false "" "[\"Sa8H1Mq4pd6z3N4xFzxvVah9AWzZyykJiJ\",\"SkbcpmjqkERwvPPqke3puu9k9bCdHLaVoP\"]"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "aliaspay", "params": ["senderalias", {"Sa8H1Mq4pd6z3N4xFzxvVah9AWzZyykJiJ":0.01,"SkbcpmjqkERwvPPqke3puu9k9bCdHLaVoP":0.02}, false, "testing"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`aliasupdate`**

*`aliasupdate [aliasname] [public value] [address] [accept_transfers_flags=3] [expire_timestamp] [encryption_privatekey] [encryption_publickey] [witness]`*
Update and possibly transfer an alias.
<aliasname> alias name.
<public_value> alias public profile data, 256 characters max.
<address> Address of alias.
<accept_transfers_flags> 0 for none, 1 for accepting certificate transfers, 2 for accepting asset transfers and 3 for all. Default is 3.
<expire_timestamp> Epoch time when to expire alias. It is exponentially more expensive per year, calculation is 2.88^years. FEERATE is the dynamic satoshi per byte fee set in the rate peg alias used for this alias. Defaults to 1 hour. Set to 0 if not changing expiration.
<encryption_privatekey> Encrypted private key used for encryption/decryption of private data related to this alias. If transferring, the key should be encrypted to alias_pubkey.
<encryption_publickey> Public key used for encryption/decryption of private data related to this alias. Useful if you are changing pub/priv keypair for encryption on this alias.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`aliasupdatewhitelist`**

*`aliasupdatewhitelist [owner alias] [{"alias":"aliasname","discount_percentage":n},...] [witness]`*
Update to the whitelist(controls who can resell). Array of whitelist entries in parameter 1.
To add to list, include a new alias/discount percentage that does not exist in the whitelist.
To update entry, change the discount percentage of an existing whitelist entry.
To remove whitelist entry, pass the whilelist entry without changing discount percentage.
<owner alias> owner alias controlling this whitelist.
	"entries"       (string) A json array of whitelist entries to add/remove/update
    [
      "alias"     (string) Alias that you want to add to the affiliate whitelist. Can be '*' to represent that the offers owned by owner alias can be resold by anybody.
	   "discount_percentage"     (number) A discount percentage associated with this alias. The reseller can sell your offer at this discount, not accounting for any commissions he/she may set in his own reselling offer. 0 to 99.
      ,...
    ]
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`aliaswhitelist`**

*`aliaswhitelist <alias>`*
List all affiliates for this alias.
\`\`\`

## **`assetallocationcollectinterest`**

*`assetallocationcollectinterest [asset] [alias] [witness]`*
Collect interest on this asset allocation if an interest rate is set on this asset.
<asset> Asset guid.
<alias> alias which owns this asset allocation.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`assetallocationinfo`**

*`assetallocationinfo <asset> <alias> <getinputs>`*
Show stored values of a single asset allocation. Set getinputs to true if you want to get the allocation inputs, if applicable.
\`\`\`

## **`assetallocationsend`**

*`assetallocationsend [asset] [aliasfrom] ( [{"aliasto":"aliasname","amount":amount},...] or [{"aliasto":"aliasname","ranges":[{"start":index,"end":index},...]},...] ) [memo] [witness]`*
Send an asset allocation you own to another alias. Maximimum recipients is 250.
<asset> Asset guid.
<aliasfrom> Alias to transfer from.
<aliasto> Alias to transfer to.
<amount> Quantity of asset to send.
<ranges> Ranges of inputs to send in integers specified in the start and end fields.
<memo> Message to include in this asset allocation transfer.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.
The third parameter can be either an array of alias and amounts if sending amount pairs or an array of alias and array of start/end pairs of indexes for input ranges.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`assetallocationsenderstatus`**

*`assetallocationsenderstatus <asset> <sender> <txid>`*
Show status as it pertains to any current Z-DAG conflicts or warnings related to a sender or sender/txid combination of an asset allocation transfer. Leave txid empty if you are not checking for a specific transfer.
Return value is in the status field and can represent 3 levels(0, 1 or 2)
Level -1 means not found, not a ZDAG transaction, perhaps it is already confirmed.
Level 0 means OK.
Level 1 means warning (checked that in the mempool there are more spending balances than current POW sender balance). An active stance should be taken and perhaps a deeper analysis as to potential conflicts related to the sender.
Level 2 means an active double spend was found and any depending asset allocation sends are also flagged as dangerous and should wait for POW confirmation before proceeding.
\`\`\`

## **`assetinfo`**

*`assetinfo <asset> <getinputs>`*
Show stored values of a single asset and its. Set getinputs to true if you want to get the allocation inputs, if applicable.
\`\`\`

## **`assetnew`**

*`assetnew [symbol] [alias] [public value] [category=assets] [precision=8] [use_inputranges] [supply] [max_supply] [interest_rate] [can_adjust_interest_rate] [witness]`*
<symbol> symbol of asset in uppercase, 1 characters miniumum, 8 characters max.
<alias> An alias you own.
<public value> public data, 256 characters max.
<category> category, 256 characters max. Defaults to assets.
<precision> Precision of balances. Must be between 0 and 8. The lower it is the higher possible max_supply is available since the supply is represented as a 64 bit integer. With a precision of 8 the max supply is 10 billion.
<use_inputranges> If this asset uses an input for every token, useful if you need to keep track of a token regardless of ownership. If set to true, precision is forced to 0. Maximum supply with input ranges is 10 million.
<supply> Initial supply of asset. Can mint more supply up to total_supply amount or if total_supply is -1 then minting is uncapped.
<max_supply> Maximum supply of this asset. Set to -1 for uncapped. Depends on the precision value that is set, the lower the precision the higher max_supply can be.
<interest_rate> The annual interest rate if any. Money supply is still capped to total supply. Should be between 0 and 1 and represents a percentage divided by 100.
<can_adjust_interest_rate> Ability to adjust interest rate through assetupdate in the future.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`assetsend`**

*`assetsend [asset] [aliasfrom] ( [{"aliasto":"aliasname","amount":amount},...] or [{"aliasto":"aliasname","ranges":[{"start":index,"end":index},...]},...] ) [memo] [witness]`*
Send an asset you own to another alias as an asset allocation. Maximimum recipients is 250.
<asset> Asset guid.
<aliasfrom> Alias to transfer from.
<aliasto> Alias to transfer to.
<amount> Quantity of asset to send.
<ranges> Ranges of inputs to send in integers specified in the start and end fields.
<memo> Message to include in this asset allocation transfer.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.
The third parameter can be either an array of alias and amounts if sending amount pairs or an array of alias and array of start/end pairs of indexes for input ranges.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`assettransfer`**

*`assettransfer [asset] [alias] [witness]`*
Transfer a asset allocation you own to another alias.
<asset> Asset guid.
<alias> alias to transfer to.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`assetupdate`**

*`assetupdate [asset] [public value] [category=assets] [supply] [interest_rate] [witness]`*
Perform an update on an asset you control.
<asset> Asset guid.
<public value> Public data, 256 characters max.
<category> Category, 256 characters max. Defaults to assets
<supply> New supply of asset. Can mint more supply up to total_supply amount or if max_supply is -1 then minting is uncapped. If greator than zero, minting is assumed otherwise set to 0 to not mint any additional tokens.
<interest_rate> The annual interest rate if any. Money supply is still capped to total supply. Should be between 0 and 1 and represents a percentage divided by 100. Can only set if this asset allows adjustment of interest rate.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`backupwallet`**

*`backupwallet "destination"`*

Safely copies current wallet file to destination, which can be a directory or a path with filename.

*Arguments:*```
1. "destination"   (string) The destination directory or file

```*Examples:*```
> syscoin-cli backupwallet "backup.dat"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "backupwallet", "params": ["backup.dat"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`certinfo`**

*`certinfo <guid>`*
Show stored values of a single certificate and its .
\`\`\`

## **`certnew`**

*`certnew [alias] [title] [public value] [category=certificates] [witness]`*
<alias> An alias you own.
<title> title, 256 characters max.
<public value> public data, 256 characters max.
<category> category, 256 characters max. Defaults to certificates
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`certtransfer`**

*`certtransfer [guid] [alias] [public value] [accessflags=2] [witness]`*
Transfer a certificate you own to another alias.
<guid> certificate guidkey.
<alias> alias to transfer to.
<public value> public data, 256 characters max.
<accessflags> Set new access flags for new owner for this certificate, 0 for read-only, 1 for edit, 2 for edit and transfer access. Default is 2.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`certupdate`**

*`certupdate [guid] [title] [public value] [category=certificates] [witness]`*
Perform an update on an certificate you control.
<guid> Certificate guidkey.
<title> Certificate title, 256 characters max.
<public value> Public data, 256 characters max.
<category> Category, 256 characters max. Defaults to certificates
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`dumphdinfo`**

*`dumphdinfo`*
Returns an object containing sensitive private info about this HD wallet.

```*Result:*```
{
  "hdseed": "seed",                    (string) The HD seed (bip32, in hex)
  "mnemonic": "words",                 (string) The mnemonic for this HD wallet (bip39, english words) 
  "mnemonicpassphrase": "passphrase",  (string) The mnemonic passphrase for this HD wallet (bip39)
}

```*Examples:*```
> syscoin-cli dumphdinfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "dumphdinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`dumpprivkey`**

*`dumpprivkey "address"`*

Reveals the private key corresponding to 'address'.
Then the importprivkey can be used with this output

*Arguments:*```
1. "address"   (string, required) The syscoin address for the private key

```*Result:*```
"key"                (string) The private key

```*Examples:*```
> syscoin-cli dumpprivkey "myaddress"
> syscoin-cli importprivkey "mykey"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "dumpprivkey", "params": ["myaddress"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`dumpwallet`**

*`dumpwallet "filename"`*

Dumps all wallet keys in a human-readable format.

*Arguments:*```
1. "filename"    (string, required) The filename

```*Examples:*```
> syscoin-cli dumpwallet "test"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "dumpwallet", "params": ["test"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`escrowacknowledge`**

*`escrowacknowledge [escrow guid] [witness]`*
Acknowledge escrow payment as seller of offer.
<instantsend> Set to true to use InstantSend to send this transaction or false otherwise.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`escrowbid`**

*`escrowbid [alias] [escrow] [bid_in_payment_option] [bid_in_offer_currency] [witness]`*
<alias> An alias you own.
<escrow> Escrow GUID to place bid on.
<bid_in_payment_option> Amount to bid on offer through escrow. Bid is in payment option currency. Example: If offer is paid in SYS and you have deposited 10 SYS in escrow and would like to increase your total bid to 14 SYS enter 14 here. It is per unit of purchase.
<bid_in_offer_currency> Converted value of bid_in_payment_option from paymentOption currency to offer currency. For example: offer is priced in USD and purchased in BTC, this field will be the BTC/USD value. It is per unit of purchase.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`escrowcompleterefund`**

*`escrowcompleterefund [escrow guid] [rawtx] [witness]`*
Completes an escrow refund by creating the escrow complete refund transaction on syscoin blockchain.
<rawtx> Raw fully signed syscoin escrow transaction. It is the signed response from escrowcreaterawtransaction. You must sign this transaction externally prior to passing in.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`escrowcompleterelease`**

*`escrowcompleterelease [escrow guid] [rawtx] [witness]`*
Completes an escrow release by creating the escrow complete release transaction on syscoin blockchain.
<rawtx> Raw fully signed syscoin escrow transaction. It is the signed response from escrowcreaterawtransaction. You must sign this transaction externally prior to passing in.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`escrowcreaterawtransaction`**

*`escrowcreaterawtransaction [type] [escrow guid] [{"txid":"id","vout":n, "satoshis":n},...] [user role]`*
Creates raw transaction for escrow refund or release, sign the output raw transaction and pass it via the rawtx parameter to escrowrelease. Type is 'refund' or 'release'. Third parameter is array of input (txid, vout, amount) pairs to be used to fund escrow payment. User role represents either 'seller', 'buyer' or 'arbiter', represents who signed for the payment of the escrow. 'seller' or 'arbiter' is valid for type 'refund' (if you are the buyer during refund leave this empty), while 'buyer' or 'arbiter' is valid for type 'release' (if you are the seller during release leave this empty). You only need to provide this parameter when calling escrowrelease or escrowrefund. 

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`escrowfeedback`**

*`escrowfeedback [escrow guid] [userfrom] [feedback] [rating] [userto] [witness]`*
Send feedback for primary and secondary users in escrow, depending on who you are. Ratings are numbers from 1 to 5. User From and User To is either 'buyer', 'seller', 'reseller', or 'arbiter'.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`escrowinfo`**

*`escrowinfo <guid>`*
Show stored values of a single escrow
\`\`\`

## **`escrownew`**

*`escrownew [getamountandaddress] [alias] [arbiter alias] [offer] [quantity] [buynow] [price_per_unit_in_payment_option] [shipping_amount] [network_fee] [arbiter_fee] [witness_fee] [extTx] [payment_option] [bid_in_payment_option] [bid_in_offer_currency] [witness]`*
<getamountandaddress> True or false. Get deposit and total escrow amount aswell as escrow address for funding. If buynow is false pass bid amount in bid_in_payment_option to get total needed to complete escrow. If buynow is true amount is calculated based on offer price and quantity.
<alias> An alias you own.
<arbiter alias> Alias of Arbiter.
<offer> GUID of offer that this escrow is managing.
<quantity> Quantity of items to buy of offer.
<buynow> Specify whether the escrow involves purchasing offer for the full offer price if set to true, or through a bidding auction if set to false. If buynow is false, an initial deposit may be used to secure a bid if required by the seller.
<price_per_unit_in_payment_option> Total amount of the offer price. Amount is in paymentOption currency. It is per unit of purchase. 
<shipping amount> Amount to add to shipping for merchant. Amount is in paymentOption currency. Example: If merchant requests 0.1 BTC for shipping and escrow is paid in BTC, enter 0.1 here. Default is 0. Buyer can also add shipping using escrowaddshipping upon merchant request.
<network fee> Network fee in satoshi per byte for the transaction. Generally the escrow transaction is about 400 bytes. Default is 25 for SYS or ZEC and 250 for BTC payments.
<arbiter fee> Arbiter fee in fractional amount of the amount_in_payment_option value. For example 0.75% is 0.0075 and represents 0.0075*amount_in_payment_option satoshis paid to arbiter in the event arbiter is used to resolve a dispute. Default and minimum is 0.005.
<witness fee> Witness fee in fractional amount of the amount_in_payment_option value. For example 0.3% is 0.003 and represents 0.003*amount_in_payment_option satoshis paid to witness in the event witness signs off on an escrow through any of the following calls escrownew/escrowbid/escrowrelease/escrowrefund. Default is 0.
<extTx> External transaction ID if paid with another blockchain.
<paymentOption> If extTx is defined, specify a valid payment option used to make payment. Default is SYS.
<bid_in_payment_option> Initial bid amount you are willing to pay escrow for this offer. Amount is in paymentOption currency. It is per unit of purchase. If buynow is set to true, this value is disregarded.
<bid_in_offer_currency> Converted value of bid_in_payment_option from paymentOption currency to offer currency. For example: offer is priced in USD and purchased in BTC, this field will be the BTC/USD value. If buynow is set to true, this value is disregarded.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`escrowrefund`**

*`escrowrefund [escrow guid] [user role] [rawtx] [witness]`*
Refunds escrow funds to buyer. User role represents either 'seller' or 'arbiter'. Third parameter (rawtx) is the signed response from escrowcreaterawtransaction. You must sign this transaction externally prior to passing in.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`escrowrelease`**

*`escrowrelease [escrow guid] [user role] [rawtx] [witness]`*
Releases escrow funds to seller. User role represents either 'buyer' or 'arbiter'. Third parameter (rawtx) is the signed response from escrowcreaterawtransaction. You must sign this transaction externally prior to passing in.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`getaccount`**

*`getaccount "address"`*

DEPRECATED. Returns the account associated with the given address.

*Arguments:*```
1. "address"         (string, required) The syscoin address for account lookup.

```*Result:*```
"accountname"        (string) the account address

```*Examples:*```
> syscoin-cli getaccount "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaccount", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getaccountaddress`**

*`getaccountaddress "account"`*

DEPRECATED. Returns the current Syscoin address for receiving payments to this account.

*Arguments:*```
1. "account"       (string, required) The account name for the address. It can also be set to the empty string "" to represent the default account. The account does not need to exist, it will be created and a new address created  if there is no account by the given name.

```*Result:*```
"address"          (string) The account syscoin address

```*Examples:*```
> syscoin-cli getaccountaddress 
> syscoin-cli getaccountaddress ""
> syscoin-cli getaccountaddress "myaccount"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaccountaddress", "params": ["myaccount"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getaddressesbyaccount`**

*`getaddressesbyaccount "account"`*

DEPRECATED. Returns the list of addresses for the given account.

*Arguments:*```
1. "account"        (string, required) The account name.

```*Result:*```
[                     (json array of string)
  "address"         (string) a syscoin address associated with the given account
  ,...
]

```*Examples:*```
> syscoin-cli getaddressesbyaccount "tabby"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressesbyaccount", "params": ["tabby"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getbalance`**

*`getbalance ( "account" minconf addlockconf include_watchonly )`*

If account is not specified, returns the server's total available balance.
If account is specified (DEPRECATED), returns the balance in the account.
Note that the account "" is not the same as leaving the parameter out.
The server total may be different to the balance in the default "" account.

*Arguments:*```
1. "account"        (string, optional) DEPRECATED. The selected account, or "*" for entire wallet. It may be the default account using "".
2. minconf          (numeric, optional, default=1) Only include transactions confirmed at least this many times.
3. addlockconf      (bool, optional, default=false) Whether to add 5 confirmations to transactions locked via InstantSend.
4. include_watchonly (bool, optional, default=false) Also include balance in watch-only addresses (see 'importaddress')

```*Result:*```
amount              (numeric) The total amount in SYS received for this account.

```*Examples:*```

The total amount in the wallet
> syscoin-cli getbalance 

The total amount in the wallet at least 5 blocks confirmed
> syscoin-cli getbalance "*" 6

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getbalance", "params": ["*", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getnewaddress`**

*`getnewaddress ( "account" )`*

Returns a new Syscoin address for receiving payments.
If 'account' is specified (DEPRECATED), it is added to the address book 
so payments received with the address will be credited to 'account'.

*Arguments:*```
1. "account"        (string, optional) DEPRECATED. The account name for the address to be linked to. If not provided, the default account "" is used. It can also be set to the empty string "" to represent the default account. The account does not need to exist, it will be created if there is no account by the given name.

```*Result:*```
"address"    (string) The new syscoin address

```*Examples:*```
> syscoin-cli getnewaddress 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnewaddress", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getrawchangeaddress`**

*`getrawchangeaddress`*

Returns a new Syscoin address, for receiving change.
This is for use with raw transactions, NOT normal use.

```*Result:*```
"address"    (string) The address

```*Examples:*```
> syscoin-cli getrawchangeaddress 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getrawchangeaddress", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getreceivedbyaccount`**

*`getreceivedbyaccount "account" ( minconf addlockconf )`*

DEPRECATED. Returns the total amount received by addresses with <account> in transactions with specified minimum number of confirmations.

*Arguments:*```
1. "account"      (string, required) The selected account, may be the default account using "".
2. minconf        (numeric, optional, default=1) Only include transactions confirmed at least this many times.
3. addlockconf    (bool, optional, default=false) Whether to add 5 confirmations to transactions locked via InstantSend.

```*Result:*```
amount            (numeric) The total amount in SYS received for this account.

```*Examples:*```

Amount received by the default account with at least 1 confirmation
> syscoin-cli getreceivedbyaccount ""

Amount received at the tabby account including unconfirmed amounts with zero confirmations
> syscoin-cli getreceivedbyaccount "tabby" 0

The amount with at least 6 confirmation, very safe
> syscoin-cli getreceivedbyaccount "tabby" 6

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getreceivedbyaccount", "params": ["tabby", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getreceivedbyaddress`**

*`getreceivedbyaddress "address" ( minconf addlockconf )`*

Returns the total amount received by the given address in transactions with at least minconf confirmations.

*Arguments:*```
1. "address"         (string, required) The syscoin address for transactions.
2. minconf             (numeric, optional, default=1) Only include transactions confirmed at least this many times.
3. addlockconf         (bool, optional, default=false) Whether to add 5 confirmations to transactions locked via InstantSend.

```*Result:*```
amount   (numeric) The total amount in SYS received at this address.

```*Examples:*```

The amount from transactions with at least 1 confirmation
> syscoin-cli getreceivedbyaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG"

The amount including unconfirmed transactions, zero confirmations
> syscoin-cli getreceivedbyaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0

The amount with at least 6 confirmation, very safe
> syscoin-cli getreceivedbyaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 6

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getreceivedbyaddress", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`gettransaction`**

*`gettransaction "txid" ( include_watchonly )`*

Get detailed information about in-wallet transaction <txid>

*Arguments:*```
1. "txid"                  (string, required) The transaction id
2. "include_watchonly"     (bool, optional, default=false) Whether to include watch-only addresses in balance calculation and details[]

```*Result:*```
{
  "amount" : x.xxx,        (numeric) The transaction amount in SYS
  "fee": x.xxx,            (numeric) The amount of the fee in SYS. This is negative and only available for the 
                              'send' category of transactions.
  "instantlock" : true|false, (bool) Current transaction lock state
  "confirmations" : n,     (numeric) The number of blockchain confirmations
  "blockhash" : "hash",    (string) The block hash
  "blockindex" : xx,       (numeric) The index of the transaction in the block that includes it
  "blocktime" : ttt,       (numeric) The time in seconds since epoch (1 Jan 1970 GMT)
  "txid" : "transactionid",   (string) The transaction id.
  "time" : ttt,            (numeric) The transaction time in seconds since epoch (1 Jan 1970 GMT)
  "timereceived" : ttt,    (numeric) The time received in seconds since epoch (1 Jan 1970 GMT)
  "bip125-replaceable": "yes|no|unknown",  (string) Whether this transaction could be replaced due to BIP125 (replace-by-fee);
                                                   may be unknown for unconfirmed transactions not in the mempool
  "details" : [
    {
      "account" : "accountname",      (string) DEPRECATED. The account name involved in the transaction, can be "" for the default account.
      "address" : "address",          (string) The syscoin address involved in the transaction
      "category" : "send|receive",    (string) The category, either 'send' or 'receive'
      "amount" : x.xxx,               (numeric) The amount in SYS
      "label" : "label",              (string) A comment for the address/transaction, if any
      "vout" : n,                     (numeric) the vout value
      "fee": x.xxx,                     (numeric) The amount of the fee in SYS. This is negative and only available for the 
                                           'send' category of transactions.
      "abandoned": xxx                  (bool) 'true' if the transaction has been abandoned (inputs are respendable). Only available for the 
                                           'send' category of transactions.
    }
    ,...
  ],
  "hex" : "data"                      (string) Raw data for transaction
}

```*Examples:*```
> syscoin-cli gettransaction "1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d"
> syscoin-cli gettransaction "1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d" true
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "gettransaction", "params": ["1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`getunconfirmedbalance`**

*`getunconfirmedbalance`*
Returns the server's total unconfirmed balance
\`\`\`

## **`getwalletinfo`**

*`getwalletinfo`*
Returns an object containing various wallet state info.

```*Result:*```
{
  "walletversion": xxxxx,     (numeric) the wallet version
  "balance": xxxxxxx,         (numeric) the total confirmed balance of the wallet in SYS
  "privatesend_balance": xxxxxx, (numeric) the anonymized syscoin balance of the wallet in SYS
  "unconfirmed_balance": xxx, (numeric) the total unconfirmed balance of the wallet in SYS
  "immature_balance": xxxxxx, (numeric) the total immature balance of the wallet in SYS
  "txcount": xxxxxxx,         (numeric) the total number of transactions in the wallet
  "keypoololdest": xxxxxx,    (numeric) the timestamp (seconds since Unix epoch) of the oldest pre-generated key in the key pool
  "keypoolsize": xxxx,        (numeric) how many new keys are pre-generated (only counts external keys)
  "keypoolsize_hd_internal": xxxx, (numeric) how many new keys are pre-generated for internal use (used for change outputs, only appears if the wallet is using this feature, otherwise external keys are used)
  "keys_left": xxxx,          (numeric) how many new keys are left since last automatic backup
  "unlocked_until": ttt,      (numeric) the timestamp in seconds since epoch (midnight Jan 1 1970 GMT) that the wallet is unlocked for transfers, or 0 if the wallet is locked
  "paytxfee": x.xxxx,         (numeric) the transaction fee configuration, set in SYS/kB
  "hdchainid": "<hash>",      (string) the ID of the HD chain
  "hdaccountcount": xxx,      (numeric) how many accounts of the HD chain are in this wallet
    [
      {
      "hdaccountindex": xxx,         (numeric) the index of the account
      "hdexternalkeyindex": xxxx,    (numeric) current external childkey index
      "hdinternalkeyindex": xxxx,    (numeric) current internal childkey index
      }
      ,...
    ]
}

```*Examples:*```
> syscoin-cli getwalletinfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getwalletinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`importaddress`**

*`importaddress "address" ( "label" rescan p2sh )`*

Adds a script (in hex) or address that can be watched as if it were in your wallet but cannot be used to spend.

*Arguments:*```
1. "script"           (string, required) The hex-encoded script (or address)
2. "label"            (string, optional, default="") An optional label
3. rescan               (boolean, optional, default=true) Rescan the wallet for transactions
4. p2sh                 (boolean, optional, default=false) Add the P2SH version of the script as well

Note: This call can take minutes to complete if rescan is true.
If you have the full public key, you should call importpubkey instead of this.

Note: If you import a non-standard raw script in hex form, outputs sending to it will be treated
as change, and not show up in many RPCs.

```*Examples:*```

Import a script with rescan
> syscoin-cli importaddress "myscript"

Import using a label without rescan
> syscoin-cli importaddress "myscript" "testing" false

As a JSON-RPC call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importaddress", "params": ["myscript", "testing", false] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`importelectrumwallet`**

*`importelectrumwallet "filename" index`*

Imports keys from an Electrum wallet export file (.csv or .json)

*Arguments:*```
1. "filename"    (string, required) The Electrum wallet export file, should be in csv or json format
2. index         (numeric, optional, default=0) Rescan the wallet for transactions starting from this block index

```*Examples:*```

Import the wallet
> syscoin-cli importelectrumwallet "test.csv"
> syscoin-cli importelectrumwallet "test.json"

Import using the json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importelectrumwallet", "params": ["test.csv"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importelectrumwallet", "params": ["test.json"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`importmulti`**

*`importmulti "requests" "options"`*

Import addresses/scripts (with private or public keys, redeem script (P2SH)), rescanning all addresses in one-shot-only (rescan can be disabled via options).

*Arguments:*```
1. requests     (array, required) Data to be imported
  [     (array of json objects)
    {
      "scriptPubKey": "<script>" | { "address":"<address>" }, (string / json, required) Type of scriptPubKey (string for script, json for address)
      "timestamp": timestamp | "now"                        , (integer / string, required) Creation time of the key in seconds since epoch (Jan 1 1970 GMT),
                                                              or the string "now" to substitute the current synced blockchain time. The timestamp of the oldest
                                                              key will determine how far back blockchain rescans need to begin for missing wallet transactions.
                                                              "now" can be specified to bypass scanning, for keys which are known to never have been used, and
                                                              0 can be specified to scan the entire blockchain. Blocks up to 2 hours before the earliest key
                                                              creation time of all keys being imported by the importmulti call will be scanned.
      "redeemscript": "<script>"                            , (string, optional) Allowed only if the scriptPubKey is a P2SH address or a P2SH scriptPubKey
      "pubkeys": ["<pubKey>", ... ]                         , (array, optional) Array of strings giving pubkeys that must occur in the output or redeemscript
      "keys": ["<key>", ... ]                               , (array, optional) Array of strings giving private keys whose corresponding public keys must occur in the output or redeemscript
      "internal": <true>                                    , (boolean, optional, default: false) Stating whether matching outputs should be be treated as not incoming payments
      "watchonly": <true>                                   , (boolean, optional, default: false) Stating whether matching outputs should be considered watched even when they're not spendable, only allowed if keys are empty
      "label": <label>                                      , (string, optional, default: '') Label to assign to the address (aka account name, for now), only allowed with internal=false
    }
  ,...
  ]
2. options                 (json, optional)
  {
     "rescan": <false>,         (boolean, optional, default: true) Stating if should rescan the blockchain after all imports
  }

```*Examples:*```
> syscoin-cli importmulti '[{ "scriptPubKey": { "address": "<my address>" }, "timestamp":1455191478 }, { "scriptPubKey": { "address": "<my 2nd address>" }, "label": "example 2", "timestamp": 1455191480 }]'
> syscoin-cli importmulti '[{ "scriptPubKey": { "address": "<my address>" }, "timestamp":1455191478 }]' '{ "rescan": false}'

Response is an array with the same size as the input that has the execution result :
  [{ "success": true } , { "success": false, "error": { "code": -1, "message": "Internal Server Error"} }, ... ]
\`\`\`

## **`importprivkey`**

*`importprivkey "syscoinprivkey" ( "label" ) ( rescan )`*

Adds a private key (as returned by dumpprivkey) to your wallet.

*Arguments:*```
1. "syscoinprivkey"   (string, required) The private key (see dumpprivkey)
2. "label"            (string, optional, default="") An optional label
3. rescan               (boolean, optional, default=true) Rescan the wallet for transactions

Note: This call can take minutes to complete if rescan is true.

```*Examples:*```

Dump a private key
> syscoin-cli dumpprivkey "myaddress"

Import the private key with rescan
> syscoin-cli importprivkey "mykey"

Import using a label and without rescan
> syscoin-cli importprivkey "mykey" "testing" false

Import using default blank label and without rescan
> syscoin-cli importprivkey "mykey" "" false

As a JSON-RPC call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importprivkey", "params": ["mykey", "testing", false] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`importprunedfunds`**

*`importprunedfunds`*

Imports funds without rescan. Corresponding address or script must previously be included in wallet. Aimed towards pruned wallets. The end-user is responsible to import additional transactions that subsequently spend the imported outputs or rescan after the point in the blockchain the transaction is included.

*Arguments:*```
1. "rawtransaction" (string, required) A raw transaction in hex funding an already-existing address in wallet
2. "txoutproof"     (string, required) The hex output from gettxoutproof that contains the transaction
\`\`\`

## **`importpubkey`**

*`importpubkey "pubkey" ( "label" rescan )`*

Adds a public key (in hex) that can be watched as if it were in your wallet but cannot be used to spend.

*Arguments:*```
1. "pubkey"           (string, required) The hex-encoded public key
2. "label"            (string, optional, default="") An optional label
3. rescan               (boolean, optional, default=true) Rescan the wallet for transactions

Note: This call can take minutes to complete if rescan is true.

```*Examples:*```

Import a public key with rescan
> syscoin-cli importpubkey "mypubkey"

Import using a label without rescan
> syscoin-cli importpubkey "mypubkey" "testing" false

As a JSON-RPC call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importpubkey", "params": ["mypubkey", "testing", false] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`importwallet`**

*`importwallet "filename"`*

Imports keys from a wallet dump file (see dumpwallet).

*Arguments:*```
1. "filename"    (string, required) The wallet file

```*Examples:*```

Dump the wallet
> syscoin-cli dumpwallet "test"

Import the wallet
> syscoin-cli importwallet "test"

Import using the json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importwallet", "params": ["test"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`instantsendtoaddress`**

*`instantsendtoaddress "address" amount ( "comment" "comment-to" subtractfeefromamount )`*

Send an amount to a given address. The amount is a real and is rounded to the nearest 0.00000001

Requires wallet passphrase to be set with walletpassphrase call.
*Arguments:*```
1. "address"     (string, required) The syscoin address to send to.
2. "amount"      (numeric, required) The amount in SYS to send. eg 0.1
3. "comment"     (string, optional) A comment used to store what the transaction is for. 
                             This is not part of the transaction, just kept in your wallet.
4. "comment_to"  (string, optional) A comment to store the name of the person or organization 
                             to which you're sending the transaction. This is not part of the 
                             transaction, just kept in your wallet.
5. subtractfeefromamount  (boolean, optional, default=false) The fee will be deducted from the amount being sent.
                             The recipient will receive less amount of Syscoin than you enter in the amount field.

```*Result:*```
"transactionid"  (string) The transaction id.

```*Examples:*```
> syscoin-cli instantsendtoaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.1
> syscoin-cli instantsendtoaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.1 "donation" "seans outpost"
> syscoin-cli instantsendtoaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.1 "" "" true
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "instantsendtoaddress", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", 0.1, "donation", "seans outpost"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`keepass`**

*`keepass <genkey|init|setpassphrase>`*
\`\`\`

## **`keypoolrefill`**

*`keypoolrefill ( newsize )`*

Fills the keypool.
Requires wallet passphrase to be set with walletpassphrase call.

*Arguments:*```
1. newsize     (numeric, optional, default=1000) The new keypool size

```*Examples:*```
> syscoin-cli keypoolrefill 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "keypoolrefill", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`listaccounts`**

*`listaccounts ( minconf addlockconf include_watchonly)`*

DEPRECATED. Returns Object that has account names as keys, account balances as values.

*Arguments:*```
1. minconf             (numeric, optional, default=1) Only include transactions with at least this many confirmations
2. addlockconf         (bool, optional, default=false) Whether to add 5 confirmations to transactions locked via InstantSend.
3. include_watchonly   (bool, optional, default=false) Include balances in watch-only addresses (see 'importaddress')

```*Result:*```
{                    (json object where keys are account names, and values are numeric balances
  "account": x.xxx,  (numeric) The property name is the account name, and the value is the total balance for the account.
  ...
}

```*Examples:*```

List account balances where there at least 1 confirmation
> syscoin-cli listaccounts 

List account balances including zero confirmation transactions
> syscoin-cli listaccounts 0

List account balances for 6 or more confirmations
> syscoin-cli listaccounts 6

As json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaccounts", "params": [6] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`listaddressbalances`**

*`listaddressbalances ( minamount )`*

Lists addresses of this wallet and their balances

*Arguments:*```
1. minamount               (numeric, optional, default=0) Minimum balance in SYS an address should have to be shown in the list

```*Result:*```
{
  "address": amount,       (string) The syscoin address and the amount in SYS
  ,...
}

```*Examples:*```
> syscoin-cli listaddressbalances 
> syscoin-cli listaddressbalances 10
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaddressbalances", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaddressbalances", "params": [10] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`listaddressgroupings`**

*`listaddressgroupings`*

Lists groups of addresses which have had their common ownership
made public by common use as inputs or as the resulting change
in past transactions

```*Result:*```
[
  [
    [
      "address",            (string) The syscoin address
      amount,                 (numeric) The amount in SYS
      "account"             (string, optional) DEPRECATED. The account
    ]
    ,...
  ]
  ,...
]

```*Examples:*```
> syscoin-cli listaddressgroupings 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaddressgroupings", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`listaliases`**

*`listaliases [count] [from] [{options}]]`*
scan through all aliases.
[count]          (numeric, optional, unbounded=0, default=10) The number of results to return, 0 returns all.
[from]           (numeric, optional, default=0) The number of results to skip.
[options]        (object, optional) A json object with options to filter results
    {
      "txid":txid					(string) Transaction ID to filter results for
      "alias":alias				(string) Alias name to filter.
      "startblock":block   (number) Earliest block to filter from. Block number is the block at which the transaction would have confirmed.
    }
> syscoin-cli listaliases 0
> syscoin-cli listaliases 10 10
> syscoin-cli listaliases 0 0 '{"alias":"find-this-alias"}'
> syscoin-cli listaliases 0 0 '{"txid":"1c7f966dab21119bac53213a2bc7532bff1fa844c124fd750a7d0b1332440bd1","startblock":0}'
\`\`\`

## **`listassetallocations`**

*`listassetallocations [count] [from] [{options}]`*
scan through all asset allocations.
[count]          (numeric, optional, unbounded=0, default=10) The number of results to return, 0 to return all.
[from]           (numeric, optional, default=0) The number of results to skip.
[options]        (array, optional) A json object with options to filter results
    {
      "txid":txid						(string) Transaction ID to filter.
	     "asset":guid						(string) Asset GUID to filter.
      "sender":sender alias	(string) Sender alias name to filter.
      "receiver":receiver alias	(string) Receiver alias name to filter.
      "startblock":block			(number) Earliest block to filter from. Block number is the block at which the transaction would have confirmed.
    }
> syscoin-cli listassetallocations 0
> syscoin-cli listassetallocations 10 10
> syscoin-cli listassetallocations 0 0 '{"asset":"32bff1fa844c124","startblock":0}'
> syscoin-cli listassetallocations 0 0 '{"sender":"sender-alias","receiver":"receiver-alias"}'
> syscoin-cli listassetallocations 0 0 '{"txid":"1c7f966dab21119bac53213a2bc7532bff1fa844c124fd750a7d0b1332440bd1"}'
\`\`\`

## **`listassetallocationtransactions`**

*`listassetallocationtransactions [count] [from] [{options}]`*
list asset allocations sent or recieved in this wallet.
[count]          (numeric, optional, default=10) The number of results to return, 0 to return all.
[from]           (numeric, optional, default=0) The number of results to skip.
[options]        (object, optional) A json object with options to filter results
    {
      "txid":txid					(string) Transaction ID to filter.
	     "asset":guid					(string) Asset GUID to filter.
      "sender":sender alias	(string) Sender alias name to filter.
      "receiver":receiver alias	(string) Receiver alias name to filter.
      "startblock":block 	(number) Earliest block to filter from. Block number is the block at which the transaction would have entered your mempool.
    }
> syscoin-cli listassetallocationtransactions 0 10
> syscoin-cli listassetallocationtransactions 0 0 '{"asset":"32bff1fa844c124","startblock":0}'
> syscoin-cli listassetallocationtransactions 0 0 '{"sender":"sender-alias","receiver":"receiver-alias"}'
> syscoin-cli listassetallocationtransactions 0 0 '{"txid":"1c7f966dab21119bac53213a2bc7532bff1fa844c124fd750a7d0b1332440bd1"}'
\`\`\`

## **`listassets`**

*`listassets [count] [from] [{options}]`*
scan through all assets.
[count]          (numeric, optional, unbounded=0, default=10) The number of results to return, 0 to return all.
[from]           (numeric, optional, default=0) The number of results to skip.
[options]        (object, optional) A json object with options to filter results
    {
      "txid":txid					(string) Transaction ID to filter results for
	     "asset":guid					(string) Asset GUID to filter.
      "alias":alias				(string) Owner alias name to filter.
      "startblock":block 	(number) Earliest block to filter from. Block number is the block at which the transaction would have confirmed.
    }
> syscoin-cli listassets 0
> syscoin-cli listassets 10 10
> syscoin-cli listassets 0 0 '{"alias":"owner-alias"}'
> syscoin-cli listassets 0 0 '{"asset":"32bff1fa844c124","alias":"owner-alias","startblock":0}'
\`\`\`

## **`listcerts`**

*`listcerts [count] [from] [{options}]`*
scan through all certificates.
[count]          (numeric, optional, unbounded=0, default=10) The number of results to return, 0 to return all.
[from]           (numeric, optional, default=0) The number of results to skip.
[options]        (object, optional) A json object with options to filter results
    {
      "txid":txid				(string) Transaction ID to filter results for
	     "cert":guid				(string) Certificate GUID to filter.
      "alias":alias			(string) Owner alias name to filter.
      "startblock":block	(number) Earliest block to filter from. Block number is the block at which the transaction would have confirmed.
    }
> syscoin-cli listcerts 0
> syscoin-cli listcerts 10 0
> syscoin-cli listcerts 0 0 '{"alias":"cert-owner-alias","startblock":0}'
> syscoin-cli listcerts 0 0 '{"cert":"32bff1fa844c124"}'
> syscoin-cli listcerts 0 0 '{"txid":"1c7f966dab21119bac53213a2bc7532bff1fa844c124fd750a7d0b1332440bd1"}'
\`\`\`

## **`listescrows`**

*`listescrows [count] [from] [{options}]`*
scan through all escrows.
[count]          (numeric, optional, unbounded=0, default=10) The number of results to return, 0 to return all.
[from]           (numeric, optional, default=0) The number of results to skip.
[options]        (object, optional) A json object with options to filter results
    {
      "txid":txid					(string) Transaction ID to filter results for
	     "escrow":guid				(string) Escrow GUID to filter.
      "buyeralias":alias		(string) Buyer Alias name to filter.
      "selleralias":alias	(string) Seller Alias name to filter.
      "arbiteralias":alias	(string) Arbiter Alias name to filter.
      "startblock":block 	(number) Earliest block to filter from. Block number is the block at which the transaction would have confirmed.
    }
> syscoin-cli listcerts 0
> syscoin-cli listcerts 10 10
> syscoin-cli listcerts 0 0 '{"escrow":"32bff1fa844c124"}'
> syscoin-cli listcerts 0 0 '{"buyeralias":"buyer-alias","selleralias":"seller-alias","arbiteralias":"arbiter-alias"}'
> syscoin-cli listcerts 0 0 '{"txid":"1c7f966dab21119bac53213a2bc7532bff1fa844c124fd750a7d0b1332440bd1","startblock":0}'
\`\`\`

## **`listlockunspent`**

*`listlockunspent`*

Returns list of temporarily unspendable outputs.
See the lockunspent call to lock and unlock transactions for spending.

```*Result:*```
[
  {
    "txid" : "transactionid",     (string) The transaction id locked
    "vout" : n                      (numeric) The vout value
  }
  ,...
]

```*Examples:*```

List the unspent transactions
> syscoin-cli listunspent 

Lock an unspent transaction
> syscoin-cli lockunspent false "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"

List the locked transactions
> syscoin-cli listlockunspent 

Unlock the transaction again
> syscoin-cli lockunspent true "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listlockunspent", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`listoffers`**

*`listoffers [count] [from] [{options}]`*
scan through all offers.
[count]          (numeric, optional, unbounded=0, default=10) The number of results to return, 0 to return all.
[from]           (numeric, optional, default=0) The number of results to skip.
[options]        (object, optional) A json object with options to filter results
    {
      "txid":txid				(string) Transaction ID to filter.
	     "offer":guid				(string) Offer GUID to filter.
      "alias":alias			(string) Alias name to filter.
      "startblock":block	(number) Earliest block to filter from. Block number is the block at which the transaction would have confirmed.
    }
> syscoin-cli listoffers 0
> syscoin-cli listoffers 10 10
> syscoin-cli listoffers 0 0 '{"offer":"32bff1fa844c124","startblock":0}'
> syscoin-cli listoffers 0 0 '{"alias":"offer-owner-alias"}'
> syscoin-cli listoffers 0 0 '{"txid":"1c7f966dab21119bac53213a2bc7532bff1fa844c124fd750a7d0b1332440bd1"}'
\`\`\`

## **`listreceivedbyaccount`**

*`listreceivedbyaccount ( minconf addlockconf include_empty include_watchonly)`*

DEPRECATED. List balances by account.

*Arguments:*```
1. minconf           (numeric, optional, default=1) The minimum number of confirmations before payments are included.
2. addlockconf       (bool, optional, default=false) Whether to add 5 confirmations to transactions locked via InstantSend.
3. include_empty     (bool, optional, default=false) Whether to include accounts that haven't received any payments.
4. include_watchonly (bool, optional, default=false) Whether to include watch-only addresses (see 'importaddress').

```*Result:*```
[
  {
    "involvesWatchonly" : true,   (bool) Only returned if imported addresses were involved in transaction
    "account" : "accountname",    (string) The account name of the receiving account
    "amount" : x.xxx,             (numeric) The total amount received by addresses with this account
    "confirmations" : n           (numeric) The number of blockchain confirmations of the most recent transaction included
    "label" : "label"             (string) A comment for the address/transaction, if any
  }
  ,...
]

```*Examples:*```
> syscoin-cli listreceivedbyaccount 
> syscoin-cli listreceivedbyaccount 6 false true
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listreceivedbyaccount", "params": [6, false, true, true] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`listreceivedbyaddress`**

*`listreceivedbyaddress ( minconf addlockconf include_empty include_watchonly)`*

List balances by receiving address.

*Arguments:*```
1. minconf           (numeric, optional, default=1) The minimum number of confirmations before payments are included.
2. addlockconf       (bool, optional, default=false) Whether to add 5 confirmations to transactions locked via InstantSend.
3. include_empty     (bool, optional, default=false) Whether to include addresses that haven't received any payments.
4. include_watchonly (bool, optional, default=false) Whether to include watch-only addresses (see 'importaddress').

```*Result:*```
[
  {
    "involvesWatchonly" : true,        (bool) Only returned if imported addresses were involved in transaction
    "address" : "receivingaddress",    (string) The receiving address
    "account" : "accountname",         (string) DEPRECATED. The account of the receiving address. The default account is "".
    "amount" : x.xxx,                  (numeric) The total amount in SYS received by the address
    "confirmations" : n                (numeric) The number of confirmations of the most recent transaction included.
                                                 If 'addlockconf' is true, the minimum number of confirmations is calculated
                                                 including additional 5 confirmations for transactions locked via InstantSend
    "label" : "label",               (string) A comment for the address/transaction, if any
    "txids": [
       n,                                (numeric) The ids of transactions received with the address 
       ...
    ]
  }
  ,...
]

```*Examples:*```
> syscoin-cli listreceivedbyaddress 
> syscoin-cli listreceivedbyaddress 6 false true
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listreceivedbyaddress", "params": [6, false, true, true] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`listsinceblock`**

*`listsinceblock ( "blockhash" target_confirmations include_watchonly)`*

Get all transactions in blocks since block [blockhash], or all transactions if omitted

*Arguments:*```
1. "blockhash"            (string, optional) The block hash to list transactions since
2. target_confirmations:    (numeric, optional) The confirmations required, must be 1 or more
3. include_watchonly:       (bool, optional, default=false) Include transactions to watch-only addresses (see 'importaddress')
```*Result:*```
{
  "transactions": [
    "account":"accountname",  (string) DEPRECATED. The account name associated with the transaction. Will be "" for the default account.
    "address":"address",    (string) The syscoin address of the transaction. Not present for move transactions (category = move).
    "category":"send|receive",  (string) The transaction category. 'send' has negative amounts, 'receive' has positive amounts.
    "amount": x.xxx,          (numeric) The amount in SYS. This is negative for the 'send' category, and for the 'move' category for moves 
                                          outbound. It is positive for the 'receive' category, and for the 'move' category for inbound funds.
    "vout" : n,               (numeric) the vout value
    "fee": x.xxx,             (numeric) The amount of the fee in SYS. This is negative and only available for the 'send' category of transactions.
    "instantlock" : true|false, (bool) Current transaction lock state. Available for 'send' and 'receive' category of transactions.
    "confirmations" : n,      (numeric) The number of blockchain confirmations for the transaction. Available for 'send' and 'receive' category of transactions.
                                          When it's < 0, it means the transaction conflicted that many blocks ago.
    "blockhash": "hashvalue", (string) The block hash containing the transaction. Available for 'send' and 'receive' category of transactions.
    "blockindex": n,          (numeric) The index of the transaction in the block that includes it. Available for 'send' and 'receive' category of transactions.
    "blocktime": xxx,         (numeric) The block time in seconds since epoch (1 Jan 1970 GMT).
    "txid": "transactionid",  (string) The transaction id. Available for 'send' and 'receive' category of transactions.
    "time": xxx,              (numeric) The transaction time in seconds since epoch (Jan 1 1970 GMT).
    "timereceived": xxx,      (numeric) The time received in seconds since epoch (Jan 1 1970 GMT). Available for 'send' and 'receive' category of transactions.
    "bip125-replaceable": "yes|no|unknown",  (string) Whether this transaction could be replaced due to BIP125 (replace-by-fee);
                                                   may be unknown for unconfirmed transactions not in the mempool
    "abandoned": xxx,         (bool) 'true' if the transaction has been abandoned (inputs are respendable). Only available for the 'send' category of transactions.
    "comment": "...",         (string) If a comment is associated with the transaction.
    "label" : "label"         (string) A comment for the address/transaction, if any
    "to": "...",              (string) If a comment to is associated with the transaction.
  ],
  "lastblock": "lastblockhash"  (string) The hash of the last block
}

```*Examples:*```
> syscoin-cli listsinceblock 
> syscoin-cli listsinceblock "000000000000000bacf66f7497b7dc45ef753ee9a7d38571037cdb1a57f663ad" 6
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listsinceblock", "params": ["000000000000000bacf66f7497b7dc45ef753ee9a7d38571037cdb1a57f663ad", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`listtransactions`**

*`listtransactions ( "account" count skip include_watchonly)`*

Returns up to 'count' most recent transactions skipping the first 'from' transactions for account 'account'.

*Arguments:*```
1. "account"        (string, optional) DEPRECATED. The account name. Should be "*".
2. count            (numeric, optional, default=10) The number of transactions to return
3. skip           (numeric, optional, default=0) The number of transactions to skip
4. include_watchonly (bool, optional, default=false) Include transactions to watch-only addresses (see 'importaddress')

```*Result:*```
[
  {
    "account":"accountname",  (string) DEPRECATED. The account name associated with the transaction. 
                                                It will be "" for the default account.
    "address":"address",    (string) The syscoin address of the transaction. Not present for 
                                                move transactions (category = move).
    "category":"send|receive|move", (string) The transaction category. 'move' is a local (off blockchain)
                                                transaction between accounts, and not associated with an address,
                                                transaction id or block. 'send' and 'receive' transactions are 
                                                associated with an address, transaction id and block details
    "amount": x.xxx,          (numeric) The amount in SYS. This is negative for the 'send' category, and for the
                                         'move' category for moves outbound. It is positive for the 'receive' category,
                                         and for the 'move' category for inbound funds.
    "label": "label",       (string) A comment for the address/transaction, if any
    "vout": n,                (numeric) the vout value
    "fee": x.xxx,             (numeric) The amount of the fee in SYS. This is negative and only available for the 
                                         'send' category of transactions.
    "instantlock" : true|false, (bool) Current transaction lock state. Available for 'send' and 'receive' category of transactions.
    "confirmations": n,       (numeric) The number of blockchain confirmations for the transaction. Available for 'send' and 
                                         'receive' category of transactions. Negative confirmations indicate the
                                         transation conflicts with the block chain
    "trusted": xxx,           (bool) Whether we consider the outputs of this unconfirmed transaction safe to spend.
    "blockhash": "hashvalue", (string) The block hash containing the transaction. Available for 'send' and 'receive'
                                          category of transactions.
    "blockindex": n,          (numeric) The index of the transaction in the block that includes it. Available for 'send' and 'receive'
                                          category of transactions.
    "blocktime": xxx,         (numeric) The block time in seconds since epoch (1 Jan 1970 GMT).
    "txid": "transactionid",  (string) The transaction id. Available for 'send' and 'receive' category of transactions.
    "time": xxx,              (numeric) The transaction time in seconds since epoch (midnight Jan 1 1970 GMT).
    "timereceived": xxx,      (numeric) The time received in seconds since epoch (midnight Jan 1 1970 GMT). Available 
                                          for 'send' and 'receive' category of transactions.
    "comment": "...",         (string) If a comment is associated with the transaction.
    "otheraccount": "accountname",  (string) DEPRECATED. For the 'move' category of transactions, the account the funds came 
                                          from (for receiving funds, positive amounts), or went to (for sending funds,
                                          negative amounts).
    "bip125-replaceable": "yes|no|unknown",  (string) Whether this transaction could be replaced due to BIP125 (replace-by-fee);
                                                     may be unknown for unconfirmed transactions not in the mempool
    "abandoned": xxx          (bool) 'true' if the transaction has been abandoned (inputs are respendable). Only available for the 
                                         'send' category of transactions.
  }
]

```*Examples:*```

List the most recent 10 transactions in the systems
> syscoin-cli listtransactions 

List transactions 100 to 120
> syscoin-cli listtransactions "*" 20 100

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listtransactions", "params": ["*", 20, 100] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`listunspent`**

*`listunspent ( minconf maxconf  ["addresses",...] [include_unsafe] )`*

Returns array of unspent transaction outputs
with between minconf and maxconf (inclusive) confirmations.
Optionally filter to only include txouts paid to specified addresses.

*Arguments:*```
1. minconf          (numeric, optional, default=1) The minimum confirmations to filter
2. maxconf          (numeric, optional, default=9999999) The maximum confirmations to filter
3. "addresses"      (string) A json array of syscoin addresses to filter
    [
      "address"     (string) syscoin address
      ,...
    ]
4. include_unsafe (bool, optional, default=true) Include outputs that are not safe to spend
                  because they come from unconfirmed untrusted transactions or unconfirmed
                  replacement transactions (cases where we are less sure that a conflicting
                  transaction won't be mined).

```*Result:*```
[                             (array of json object)
  {
    "txid" : "txid",          (string) the transaction id 
    "vout" : n,               (numeric) the vout value
    "address" : "address",    (string) the syscoin address
    "account" : "account",    (string) DEPRECATED. The associated account, or "" for the default account
    "scriptPubKey" : "key",   (string) the script key
    "amount" : x.xxx,         (numeric) the transaction output amount in SYS
    "confirmations" : n,      (numeric) The number of confirmations
    "redeemScript" : n        (string) The redeemScript if scriptPubKey is P2SH
    "spendable" : xxx,        (bool) Whether we have the private keys to spend this output
    "solvable" : xxx,         (bool) Whether we know how to spend this output, ignoring the lack of keys
    "ps_rounds" : n           (numeric) The number of PS round
  }
  ,...
]

```*Examples:*```
> syscoin-cli listunspent 
> syscoin-cli listunspent 6 9999999 "[\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg\",\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcg\"]"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listunspent", "params": [6, 9999999 "[\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg\",\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcg\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`lockunspent`**

*`lockunspent unlock ([{"txid":"txid","vout":n},...])`*

Updates list of temporarily unspendable outputs.
Temporarily lock (unlock=false) or unlock (unlock=true) specified transaction outputs.
If no transaction outputs are specified when unlocking then all current locked transaction outputs are unlocked.
A locked transaction output will not be chosen by automatic coin selection, when spending syscoins.
Locks are stored in memory only. Nodes start with zero locked outputs, and the locked output list
is always cleared (by virtue of process exit) when a node stops or fails.
Also see the listunspent call

*Arguments:*```
1. unlock            (boolean, required) Whether to unlock (true) or lock (false) the specified transactions
2. "transactions"  (string, optional) A json array of objects. Each object the txid (string) vout (numeric)
     [           (json array of json objects)
       {
         "txid":"id",    (string) The transaction id
         "vout": n         (numeric) The output number
       }
       ,...
     ]

```*Result:*```
true|false    (boolean) Whether the command was successful or not

```*Examples:*```

List the unspent transactions
> syscoin-cli listunspent 

Lock an unspent transaction
> syscoin-cli lockunspent false "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"

List the locked transactions
> syscoin-cli listlockunspent 

Unlock the transaction again
> syscoin-cli lockunspent true "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "lockunspent", "params": [false, "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`move`**

*`move "fromaccount" "toaccount" amount ( minconf "comment" )`*

DEPRECATED. Move a specified amount from one account in your wallet to another.

*Arguments:*```
1. "fromaccount"    (string, required) The name of the account to move funds from. May be the default account using "".
2. "toaccount"      (string, required) The name of the account to move funds to. May be the default account using "".
3. amount           (numeric) Quantity of SYS to move between accounts.
4. (dummy)          (numeric, optional) Ignored. Remains for backward compatibility.
5. "comment"        (string, optional) An optional comment, stored in the wallet only.

```*Result:*```
true|false          (boolean) true if successful.

```*Examples:*```

Move 0.01 SYS from the default account to the account named tabby
> syscoin-cli move "" "tabby" 0.01

Move 0.01 SYS timotei to akiko with a comment and funds have 6 confirmations
> syscoin-cli move "timotei" "akiko" 0.01 6 "happy birthday!"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "move", "params": ["timotei", "akiko", 0.01, 6, "happy birthday!"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`offerinfo`**

*`offerinfo <guid>`*
Show offer details
\`\`\`

## **`offerlink`**

*`offerlink [alias] [guid] [commission] [description] [witness]`*
<alias> An alias you own.
<guid> offer guid that you are linking to
<commission> percentage of profit desired over original offer price, > 0, ie: 5 for 5%
<description> description, 512 characters max.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`offernew`**

*`offernew [alias] [category] [title] [quantity] [price] [description] [currency] [cert. guid] [payment options=SYS] [private=false] [units=1] [offertype=BUYNOW] [auction_expires=0] [auction_reserve=0] [auction_require_witness=false] [auction_deposit=0] [witness]`*
<alias> An alias you own.
<category> category, 256 characters max.
<title> title, 256 characters max.
<quantity> quantity, > 0 or -1 for infinite
<price> price in <currency>
<description> description, 512 characters max.
<currency> The currency code that you want your offer to be in ie: USD.
<cert. guid> Set this to the guid of a certificate you wish to sell
<paymentOptions> 'SYS' to accept SYS only, 'BTC' for BTC only, 'ZEC' for zcash only, or a |-delimited string to accept multiple currencies (e.g. 'BTC|SYS' to accept BTC or SYS). Leave empty for default. Defaults to 'SYS'.
<private> set to Yes if this offer should be private not be searchable. Defaults to No.
<units> Units that 1 qty represents. For example if selling 1 BTC. Default is 1.
<offertype> Options of how an offer is sold. 'BUYNOW' for regular Buy It Now offer, 'AUCTION' to auction this offer while providing auction_expires/auction_reserve/auction_require_witness parameters, 'COIN' for offers selling cryptocurrency, or a | -delimited string to create an offer with multiple options(e.g. 'BUYNOW|AUCTION' to create an offer that is sold through an auction but has Buy It Now enabled as well).Leave empty for default. Defaults to 'BUYNOW'.
<auction_expires> If offerType is AUCTION, Datetime of expiration of an auction. Once merchant creates an offer as an auction, the expiry must be non-zero. The auction parameters will not be updateable until an auction expires.
<auction_reserve> If offerType is AUCTION, Reserve price of an offer publicly. Bids must be of higher price than the reserve price. Any bid below the reserve price will be rejected by consensus checks in escrow. Default is 0.
<auction_require_witness> If offerType is AUCTION, Require a witness signature for bids of an offer, or release/refund of an escrow funds in an auction for the offer. Set to true if you wish to require witness signature. Default is false.
<auction_deposit> If offerType is AUCTION. If you require a deposit for each bidder to ensure stake to bidders set this to a percentage of the offer price required to place deposit when doing an initial bid. For Example: 1% of the offer price would be 0.01. Default is 0.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`offerupdate`**

*`offerupdate [alias] [guid] [category] [title] [quantity] [price] [description] [currency] [private=false] [cert. guid] [commission] [paymentOptions] [offerType=BUYNOW] [auction_expires] [auction_reserve] [auction_require_witness] [auction_deposit] [witness]`*
Perform an update on an offer you control.

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`prunesyscoinservices`**

*`prunesyscoinservices`*

Prune expired Syscoin service data from the internal database.
> syscoin-cli prunesyscoinservices 
\`\`\`

## **`removeprunedfunds`**

*`removeprunedfunds "txid"`*

Deletes the specified transaction from the wallet. Meant for use with pruned wallets and as a companion to importprunedfunds. This will effect wallet balances.

*Arguments:*```
1. "txid"           (string, required) The hex-encoded id of the transaction you are deleting

```*Examples:*```
> syscoin-cli removeprunedfunds "a8d0c0184dde994a09ec054286f1ce581bebf46446a512166eae7628734ea0a5"

As a JSON-RPC call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "removprunedfunds", "params": ["a8d0c0184dde994a09ec054286f1ce581bebf46446a512166eae7628734ea0a5"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`sendfrom`**

*`sendfrom "fromaccount" "toaddress" amount ( minconf addlockconf "comment" "comment_to" )`*

DEPRECATED (use sendtoaddress). Sent an amount from an account to a syscoin address.
Requires wallet passphrase to be set with walletpassphrase call.

*Arguments:*```
1. "fromaccount"       (string, required) The name of the account to send funds from. May be the default account using "".
                       Specifying an account does not influence coin selection, but it does associate the newly created
                       transaction with the account, so the account's balance computation and transaction history can reflect
                       the spend.
2. "toaddress"         (string, required) The syscoin address to send funds to.
3. amount              (numeric or string, required) The amount in SYS (transaction fee is added on top).
4. minconf             (numeric, optional, default=1) Only use funds with at least this many confirmations.
5. addlockconf         (bool, optional, default=false) Whether to add 5 confirmations to transactions locked via InstantSend.
6. "comment"           (string, optional) A comment used to store what the transaction is for. 
                       This is not part of the transaction, just kept in your wallet.
7. "comment_to"        (string, optional) An optional comment to store the name of the person or organization 
                       to which you're sending the transaction. This is not part of the transaction, 
                       it is just kept in your wallet.

```*Result:*```
"txid"                 (string) The transaction id.

```*Examples:*```

Send 0.01 SYS from the default account to the address, must have at least 1 confirmation
> syscoin-cli sendfrom "" "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.01

Send 0.01 from the tabby account to the given address, funds must have at least 6 confirmations
> syscoin-cli sendfrom "tabby" "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.01 6 false "donation" "seans outpost"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendfrom", "params": ["tabby", "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", 0.01, 6, false, "donation", "seans outpost"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`sendmany`**

*`sendmany "fromaccount" {"address":amount,...} ( minconf addlockconf "comment" ["address",...] subtractfeefromamount use_is use_ps )`*

Send multiple times. Amounts are double-precision floating point numbers.
Requires wallet passphrase to be set with walletpassphrase call.

*Arguments:*```
1. "fromaccount"           (string, required) DEPRECATED. The account to send the funds from. Should be "" for the default account
2. "amounts"               (string, required) A json object with addresses and amounts
    {
      "address":amount     (numeric or string) The syscoin address is the key, the numeric amount (can be string) in SYS is the value
      ,...
    }
3. minconf                 (numeric, optional, default=1) Only use the balance confirmed at least this many times.
4. addlockconf             (bool, optional, default=false) Whether to add 5 confirmations to transactions locked via InstantSend.
5. "comment"               (string, optional) A comment
6. subtractfeefromamount   (array, optional) A json array with addresses.
                           The fee will be equally deducted from the amount of each selected address.
                           Those recipients will receive less syscoins than you enter in their corresponding amount field.
                           If no addresses are specified here, the sender pays the fee.
    [
      "address"          (string) Subtract fee from this address
      ,...
    ]
7. "use_is"                (bool, optional) Send this transaction as InstantSend (default: false)
8. "use_ps"                (bool, optional) Use anonymized funds only (default: false)

```*Result:*```
"txid"                   (string) The transaction id for the send. Only 1 transaction is created regardless of 
                                    the number of addresses.

```*Examples:*```

Send two amounts to two different addresses:
> syscoin-cli sendmany "tabby" "{\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG\":0.01,\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcG\":0.02}"

Send two amounts to two different addresses setting the confirmation and comment:
> syscoin-cli sendmany "tabby" "{\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG\":0.01,\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcG\":0.02}" 6 false "testing"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendmany", "params": ["tabby", "{\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG\":0.01,\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcG\":0.02}", 6, false, "testing"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`sendtoaddress`**

*`sendtoaddress "address" amount ( "comment" "comment_to" subtractfeefromamount use_is use_ps )`*

Send an amount to a given address.

Requires wallet passphrase to be set with walletpassphrase call.
*Arguments:*```
1. "address"            (string, required) The syscoin address to send to.
2. "amount"             (numeric or string, required) The amount in SYS to send. eg 0.1
3. "comment"            (string, optional) A comment used to store what the transaction is for. 
                             This is not part of the transaction, just kept in your wallet.
4. "comment_to"         (string, optional) A comment to store the name of the person or organization 
                             to which you're sending the transaction. This is not part of the 
                             transaction, just kept in your wallet.
5. subtractfeefromamount  (boolean, optional, default=false) The fee will be deducted from the amount being sent.
                             The recipient will receive less amount of Syscoin than you enter in the amount field.
6. "use_is"             (bool, optional) Send this transaction as InstantSend (default: false)
7. "use_ps"             (bool, optional) Use anonymized funds only (default: false)

```*Result:*```
"txid"                  (string) The transaction id.

```*Examples:*```
> syscoin-cli sendtoaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.1
> syscoin-cli sendtoaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.1 "donation" "seans outpost"
> syscoin-cli sendtoaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.1 "" "" true
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendtoaddress", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", 0.1, "donation", "seans outpost"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`setaccount`**

*`setaccount "address" "account"`*

DEPRECATED. Sets the account associated with the given address.

*Arguments:*```
1. "address"         (string, required) The syscoin address to be associated with an account.
2. "account"         (string, required) The account to assign the address to.

```*Examples:*```
> syscoin-cli setaccount "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" "tabby"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "setaccount", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", "tabby"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`settxfee`**

*`settxfee amount`*

Set the transaction fee per kB. Overwrites the paytxfee parameter.

*Arguments:*```
1. amount         (numeric or string, required) The transaction fee in SYS/kB

```*Result:*```
true|false        (boolean) Returns true if successful

```*Examples:*```
> syscoin-cli settxfee 0.00001
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "settxfee", "params": [0.00001] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`signmessage`**

*`signmessage "address" "message"`*

Sign a message with the private key of an address
Requires wallet passphrase to be set with walletpassphrase call.

*Arguments:*```
1. "address"         (string, required) The syscoin address to use for the private key.
2. "message"         (string, required) The message to create a signature of.

```*Result:*```
"signature"          (string) The signature of the message encoded in base 64

```*Examples:*```

Unlock the wallet for 30 seconds
> syscoin-cli walletpassphrase "mypassphrase" 30

Create the signature
> syscoin-cli signmessage "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" "my message"

Verify the signature
> syscoin-cli verifymessage "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" "signature" "my message"

As json rpc
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "signmessage", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", "my message"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`syscoindecoderawtransaction`**

*`syscoindecoderawtransaction <hexstring>`*
Decode raw syscoin transaction (serialized, hex-encoded) and display information pertaining to the service that is included in the transactiion data output(OP_RETURN)
<hexstring> The transaction hex string.
\`\`\`

## **`syscoinlistreceivedbyaddress`**

*`syscoinlistreceivedbyaddress`*

List balances by receiving address.

```*Result:*```
[
  {
    "address" : "receivingaddress",    (string) The receiving address
    "amount" : x.xxx,					(numeric) The total amount in SYS received by the address
    "label" : "label"                  (string) A comment for the address/transaction, if any
    "alias" : "alias"                  (string) Associated alias to this address, if any
  }
  ,...
]

```*Examples:*```
> syscoin-cli syscoinlistreceivedbyaddress 
\`\`\`

## **`syscoinsendrawtransaction`**

*`syscoinsendrawtransaction "hexstring" ( allowhighfees instantsend )`*

Submits raw transaction (serialized, hex-encoded) to local node and network.

Also see createrawtransaction and signrawtransaction calls.

*Arguments:*```
1. "hexstring"    (string, required) The hex string of the raw transaction)
2. allowhighfees  (boolean, optional, default=false) Allow high fees
3. instantsend    (boolean, optional, default=false) Use InstantSend to send this transaction
\`\`\`

## **`syscointxfund`**

*`syscointxfund`*

Funds a new syscoin transaction with inputs used from wallet or an array of addresses specified.

*Arguments:*```
  "hexstring" (string, required) The raw syscoin transaction output given from rpc (ie: aliasnew, aliasupdate)
  "addresses (object, optional) "
    [
      "address"  (array, string) Address used to fund this transaction. Leave empty to use wallet. Last address gets sent the change.
      ,...
    ]
	"instantsend" (boolean, optional, default=false) Use InstantSend to send this transaction. 
}

```*Examples:*```
> syscoin-cli syscointxfund  <hexstring> '{"addresses": ["175tWpb8K1S7NmH4Zx6rewF9WQrcZv245W"]}' false
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "syscointxfund", "params": [ <hexstring> {"addresses": ["175tWpb8K1S7NmH4Zx6rewF9WQrcZv245W"]} true] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/

Requires wallet passphrase to be set with walletpassphrase call.
\`\`\`

## **`tpstestinfo`**

*`tpstestinfo`*
Gets TPS Test information for receivers of assetallocation transfers
\`\`\`

## **`walletlock`**

*`walletlock`*

Removes the wallet encryption key from memory, locking the wallet.
After calling this method, you will need to call walletpassphrase again
before being able to call any methods which require the wallet to be unlocked.

```*Examples:*```

Set the passphrase for 2 minutes to perform a transaction
> syscoin-cli walletpassphrase "my pass phrase" 120

Perform a send (requires passphrase set)
> syscoin-cli sendtoaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 1.0

Clear the passphrase since we are done before 2 minutes is up
> syscoin-cli walletlock 

As json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "walletlock", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`walletpassphrase`**

*`walletpassphrase "passphrase" timeout ( mixingonly )`*

Stores the wallet decryption key in memory for 'timeout' seconds.
This is needed prior to performing transactions related to private keys such as sending syscoins

*Arguments:*```
1. "passphrase"        (string, required) The wallet passphrase
2. timeout             (numeric, required) The time to keep the decryption key in seconds.
3. mixingonly          (boolean, optional, default=false) If is true sending functions are disabled.

Note:
Issuing the walletpassphrase command while the wallet is already unlocked will set a new unlock
time that overrides the old one.

```*Examples:*```

Unlock the wallet for 60 seconds
> syscoin-cli walletpassphrase "my pass phrase" 60

Unlock the wallet for 60 seconds but allow PrivateSend mixing only
> syscoin-cli walletpassphrase "my pass phrase" 60 true

Lock the wallet again (before 60 seconds)
> syscoin-cli walletlock 

As json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "walletpassphrase", "params": ["my pass phrase", 60] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

## **`walletpassphrasechange`**

*`walletpassphrasechange "oldpassphrase" "newpassphrase"`*

Changes the wallet passphrase from 'oldpassphrase' to 'newpassphrase'.

*Arguments:*```
1. "oldpassphrase"      (string) The current passphrase
2. "newpassphrase"      (string) The new passphrase

```*Examples:*```
> syscoin-cli walletpassphrasechange "old one" "new one"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "walletpassphrasechange", "params": ["old one", "new one"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
\`\`\`

