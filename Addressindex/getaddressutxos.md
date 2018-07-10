## **`getaddressutxos`**

**`getaddressutxos`**

Returns all unspent outputs for an address (requires addressindex to be enabled).

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
    "address"  (string) The address base58check encoded
    "txid"  (string) The output txid
    "outputIndex"  (number) The output index
    "script"  (string) The script hex encoded
    "satoshis"  (number) The number of satoshis of the output
    "height"  (number) The block height
  }
]

```

***Examples:***
```
> syscoin-cli getaddressutxos '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}'
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressutxos", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
