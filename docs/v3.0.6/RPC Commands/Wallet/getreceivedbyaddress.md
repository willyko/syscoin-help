## **`getreceivedbyaddress`**

**`getreceivedbyaddress "address" ( minconf addlockconf )`**

Returns the total amount received by the given address in transactions with at least minconf confirmations.

***Arguments:***
```
1. "address"         (string, required) The syscoin address for transactions.
2. minconf             (numeric, optional, default=1) Only include transactions confirmed at least this many times.
3. addlockconf         (bool, optional, default=false) Whether to add 5 confirmations to transactions locked via InstantSend.

```

***Result:***
```
amount   (numeric) The total amount in SYS received at this address.

```

***Examples:***
```

The amount from transactions with at least 1 confirmation
> syscoin-cli getreceivedbyaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG"

The amount including unconfirmed transactions, zero confirmations
> syscoin-cli getreceivedbyaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0

The amount with at least 6 confirmation, very safe
> syscoin-cli getreceivedbyaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 6

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getreceivedbyaddress", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
