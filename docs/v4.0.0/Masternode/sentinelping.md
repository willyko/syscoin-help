## **`sentinelping`**

**`sentinelping version`**

Sentinel ping.

***Arguments:***

```
1. version           (numeric, required) Sentinel version

```



***Result:***

```
state                (boolean) Ping result

```



***Examples:***

```
> syscoin-cli sentinelping 1000000
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sentinelping", "params": [1000001] }' -H 'content-type: text/plain;' http://127.0.0.1:8370/
```
