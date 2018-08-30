## **`syscoinsendrawtransaction`**

**`syscoinsendrawtransaction "hexstring" ( allowhighfees instantsend )`**

Submits raw transaction (serialized, hex-encoded) to local node and network.

Also see createrawtransaction and signrawtransaction calls.

***Arguments:***

```
1. "hexstring"    (string, required) The hex string of the raw transaction)
2. allowhighfees  (boolean, optional, default=false) Allow high fees
3. instantsend    (boolean, optional, default=false) Use InstantSend to send this transaction
```
