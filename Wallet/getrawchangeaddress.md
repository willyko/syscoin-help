## **`getrawchangeaddress`**

**`getrawchangeaddress`**

Returns a new Syscoin address, for receiving change.
This is for use with raw transactions, NOT normal use.



***Result:***
```
"address"    (string) The address

```

***Examples:***
```
> syscoin-cli getrawchangeaddress 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getrawchangeaddress", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
