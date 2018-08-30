## **`dumpwallet`**

**`dumpwallet "filename"`**

Dumps all wallet keys in a human-readable format.

***Arguments:***

```
1. "filename"    (string, required) The filename

```



***Examples:***

```
> syscoin-cli dumpwallet "test"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "dumpwallet", "params": ["test"] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
