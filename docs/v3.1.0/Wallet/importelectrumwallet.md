## **`importelectrumwallet`**

**`importelectrumwallet "filename" index`**

Imports keys from an Electrum wallet export file (.csv or .json)

***Arguments:***

```
1. "filename"    (string, required) The Electrum wallet export file, should be in csv or json format
2. index         (numeric, optional, default=0) Rescan the wallet for transactions starting from this block index

```



***Examples:***

```

Import the wallet
> syscoin-cli importelectrumwallet "test.csv"
> syscoin-cli importelectrumwallet "test.json"

Import using the json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importelectrumwallet", "params": ["test.csv"] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importelectrumwallet", "params": ["test.json"] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
