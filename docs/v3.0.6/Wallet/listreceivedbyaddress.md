## **`listreceivedbyaddress`**

**`listreceivedbyaddress ( minconf addlockconf include_empty include_watchonly)`**

List balances by receiving address.

***Arguments:***
```
1. minconf           (numeric, optional, default=1) The minimum number of confirmations before payments are included.
2. addlockconf       (bool, optional, default=false) Whether to add 5 confirmations to transactions locked via InstantSend.
3. include_empty     (bool, optional, default=false) Whether to include addresses that haven't received any payments.
4. include_watchonly (bool, optional, default=false) Whether to include watch-only addresses (see 'importaddress').

```

***Result:***
```
[
  {
    "involvesWatchonly" : true,        (bool) Only returned if imported addresses were involved in transaction
    "address" : "receivingaddress",    (string) The receiving address
    "account" : "accountname",         (string) DEPRECATED. The account of the receiving address. The default account is "".
    "amount" : x.xxx,                  (numeric) The total amount in SYS received by the address
    "confirmations" : n                (numeric) The number of confirmations of the most recent transaction included.
                                                 If 'addlockconf' is true, the minimum number of confirmations is calculated
                                                 including additional 5 confirmations for transactions locked via InstantSend
    "label" : "label",               (string) A comment for the address/transaction, if any
    "txids": [
       n,                                (numeric) The ids of transactions received with the address 
       ...
    ]
  }
  ,...
]

```

***Examples:***
```
> syscoin-cli listreceivedbyaddress 
> syscoin-cli listreceivedbyaddress 6 false true
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listreceivedbyaddress", "params": [6, false, true, true] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
