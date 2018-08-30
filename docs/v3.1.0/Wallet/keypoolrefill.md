## **`keypoolrefill`**

**`keypoolrefill ( newsize )`**

Fills the keypool.

***Arguments:***

```
1. newsize     (numeric, optional, default=1000) The new keypool size

```



***Examples:***

```
> syscoin-cli keypoolrefill 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "keypoolrefill", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
