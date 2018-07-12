## **`getaddresstxids`**

**`getaddresstxids`**

Returns the txids for an address(es) (requires addressindex to be enabled).

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
  "transactionid"  (string) The transaction id
  ,...
]

```

***Examples:***
```
> syscoin-cli getaddresstxids '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}'
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddresstxids", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
