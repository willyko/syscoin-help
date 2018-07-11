## **`getsuperblockbudget`**

**`getsuperblockbudget index`**

Returns the absolute maximum sum of superblock payments allowed.

***Arguments:***
```
1. index         (numeric, required) The block index

```

***Result:***
```
n                (numeric) The absolute maximum sum of superblock payments allowed, in SYS

```

***Examples:***
```
> syscoin-cli getsuperblockbudget 1000
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getsuperblockbudget", "params": [1000] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
