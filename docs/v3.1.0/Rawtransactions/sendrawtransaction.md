## **`sendrawtransaction`**

**`sendrawtransaction "hexstring" ( allowhighfees instantsend bypasslimits)`**

Submits raw transaction (serialized, hex-encoded) to local node and network.

Also see createrawtransaction and signrawtransaction calls.

***Arguments:***

```
1. "hexstring"    (string, required) The hex string of the raw transaction)
2. allowhighfees  (boolean, optional, default=false) Allow high fees
3. instantsend    (boolean, optional, default=false) Use InstantSend to send this transaction
3. bypasslimits   (boolean, optional, default=false) Bypass transactions policy limits

```



***Result:***

```
"hex"             (string) The transaction hash in hex

```



***Examples:***

```

Create a transaction
> syscoin-cli createrawtransaction "[{\"txid\" : \"mytxid\",\"vout\":0}]" "{\"myaddress\":0.01}"
Sign the transaction, and get back the hex
> syscoin-cli signrawtransaction "myhex"

Send the transaction (signed hex)
> syscoin-cli sendrawtransaction "signedhex"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendrawtransaction", "params": ["signedhex"] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
