## **`getbalance`**

**`getbalance ( "account" minconf addlockconf include_watchonly )`**

If account is not specified, returns the server's total available balance.
If account is specified (DEPRECATED), returns the balance in the account.
Note that the account "" is not the same as leaving the parameter out.
The server total may be different to the balance in the default "" account.

***Arguments:***
```
1. "account"        (string, optional) DEPRECATED. The selected account, or "*" for entire wallet. It may be the default account using "".
2. minconf          (numeric, optional, default=1) Only include transactions confirmed at least this many times.
3. addlockconf      (bool, optional, default=false) Whether to add 5 confirmations to transactions locked via InstantSend.
4. include_watchonly (bool, optional, default=false) Also include balance in watch-only addresses (see 'importaddress')

```

***Result:***
```
amount              (numeric) The total amount in SYS received for this account.

```

***Examples:***
```

The total amount in the wallet
> syscoin-cli getbalance 

The total amount in the wallet at least 5 blocks confirmed
> syscoin-cli getbalance "*" 6

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getbalance", "params": ["*", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
