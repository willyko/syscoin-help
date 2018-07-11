## **`disconnectnode`**

**`disconnectnode "address" `**

Immediately disconnects from the specified node.

***Arguments:***
```
1. "address"     (string, required) The IP address/port of the node

```

***Examples:***
```
> syscoin-cli disconnectnode "192.168.0.6:8369"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "disconnectnode", "params": ["192.168.0.6:8369"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
