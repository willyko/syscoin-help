## **`getaddressmempool`**

**`getaddressmempool`**

Returns all mempool deltas for an address (requires addressindex to be enabled).

***Arguments:***

```
{
  "addresses"
    [
      "address"  (string) The base58check encoded address
      ,...
    ]
}

```



***Result:***

```
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

```



***Examples:***

```
> syscoin-cli getaddressmempool '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}'
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressmempool", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
