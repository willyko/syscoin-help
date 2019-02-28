## **`getmempoolentry`**

**`getmempoolentry txid`**

Returns mempool data for given transaction

***Arguments:***

```
1. "txid"                   (string, required) The transaction id (must be in mempool)

```



***Result:***

```
{                           (json object)
    "size" : n,                 (numeric) transaction size in bytes
    "fee" : n,                  (numeric) transaction fee in SYS
    "modifiedfee" : n,          (numeric) transaction fee with fee deltas used for mining priority
    "time" : n,                 (numeric) local time transaction entered pool in seconds since 1 Jan 1970 GMT
    "height" : n,               (numeric) block height when transaction entered pool
    "startingpriority" : n,     (numeric) DEPRECATED. Priority when transaction entered pool
    "currentpriority" : n,      (numeric) DEPRECATED. Transaction priority now
    "descendantcount" : n,      (numeric) number of in-mempool descendant transactions (including this one)
    "descendantsize" : n,       (numeric) size of in-mempool descendants (including this one)
    "descendantfees" : n,       (numeric) modified fees (see above) of in-mempool descendants (including this one)
    "ancestorcount" : n,        (numeric) number of in-mempool ancestor transactions (including this one)
    "ancestorsize" : n,         (numeric) size of in-mempool ancestors (including this one)
    "ancestorfees" : n,         (numeric) modified fees (see above) of in-mempool ancestors (including this one)
    "depends" : [               (array) unconfirmed transactions used as inputs for this transaction
        "transactionid",        (string) parent transaction id
       ... ],
    "instantsend" : true|false, (boolean) True if this transaction was sent as an InstantSend one
    "instantlock" : true|false  (boolean) True if this transaction was locked via InstantSend
}

```



***Examples:***

```
> syscoin-cli getmempoolentry "mytxid"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmempoolentry", "params": ["mytxid"] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```