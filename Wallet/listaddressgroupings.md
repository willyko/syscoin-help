## **`listaddressgroupings`**

**`listaddressgroupings`**

Lists groups of addresses which have had their common ownership
made public by common use as inputs or as the resulting change
in past transactions



***Result:***
```
[
  [
    [
      "address",            (string) The syscoin address
      amount,                 (numeric) The amount in SYS
      "account"             (string, optional) DEPRECATED. The account
    ]
    ,...
  ]
  ,...
]

```

***Examples:***
```
> syscoin-cli listaddressgroupings 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaddressgroupings", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
