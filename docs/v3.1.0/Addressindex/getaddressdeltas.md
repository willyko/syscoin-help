## **`getaddressdeltas`**

**`getaddressdeltas`**

Returns all changes for an address (requires addressindex to be enabled).

***Arguments:***

```
{
  "addresses"
    [
      "address"  (string) The base58check encoded address
      ,...
    ]
  "start" (number) The start block height
  "end" (number) The end block height
}

```



***Result:***

```
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

```



***Examples:***

```
> syscoin-cli getaddressdeltas '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}'
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressdeltas", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
