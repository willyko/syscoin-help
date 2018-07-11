## **`getmempoolinfo`**

**`getmempoolinfo`**

Returns details on the active state of the TX memory pool.



***Result:***
```
{
  "size": xxxxx,               (numeric) Current tx count
  "bytes": xxxxx,              (numeric) Sum of all tx sizes
  "usage": xxxxx,              (numeric) Total memory usage for the mempool
  "maxmempool": xxxxx,         (numeric) Maximum memory usage for the mempool
  "mempoolminfee": xxxxx       (numeric) Minimum fee for tx to be accepted
}

```

***Examples:***
```
> syscoin-cli getmempoolinfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmempoolinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
