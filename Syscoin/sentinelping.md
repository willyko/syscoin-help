## **`sentinelping`**

**`sentinelping version`**

Sentinel ping.

***Arguments:***
```
1. version           (string, required) Sentinel version in the form "x.x.x"

```

***Result:***
```
state                (boolean) Ping result

```

***Examples:***
```
> syscoin-cli sentinelping 1.0.2
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sentinelping", "params": [1.0.2] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
