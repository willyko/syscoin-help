## **`listaddressbalances`**

**`listaddressbalances ( minamount )`**

Lists addresses of this wallet and their balances

***Arguments:***

```
1. minamount               (numeric, optional, default=0) Minimum balance in SYS an address should have to be shown in the list

```



***Result:***

```
{
  "address": amount,       (string) The syscoin address and the amount in SYS
  ,...
}

```



***Examples:***

```
> syscoin-cli listaddressbalances 
> syscoin-cli listaddressbalances 10
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaddressbalances", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaddressbalances", "params": [10] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
