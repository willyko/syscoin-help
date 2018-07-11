## **`listunspent`**

**`listunspent ( minconf maxconf  ["addresses",...] [include_unsafe] )`**

Returns array of unspent transaction outputs
with between minconf and maxconf (inclusive) confirmations.
Optionally filter to only include txouts paid to specified addresses.

***Arguments:***
```
1. minconf          (numeric, optional, default=1) The minimum confirmations to filter
2. maxconf          (numeric, optional, default=9999999) The maximum confirmations to filter
3. "addresses"      (string) A json array of syscoin addresses to filter
    [
      "address"     (string) syscoin address
      ,...
    ]
4. include_unsafe (bool, optional, default=true) Include outputs that are not safe to spend
                  because they come from unconfirmed untrusted transactions or unconfirmed
                  replacement transactions (cases where we are less sure that a conflicting
                  transaction won't be mined).

```

***Result:***
```
[                             (array of json object)
  {
    "txid" : "txid",          (string) the transaction id 
    "vout" : n,               (numeric) the vout value
    "address" : "address",    (string) the syscoin address
    "account" : "account",    (string) DEPRECATED. The associated account, or "" for the default account
    "scriptPubKey" : "key",   (string) the script key
    "amount" : x.xxx,         (numeric) the transaction output amount in SYS
    "confirmations" : n,      (numeric) The number of confirmations
    "redeemScript" : n        (string) The redeemScript if scriptPubKey is P2SH
    "spendable" : xxx,        (bool) Whether we have the private keys to spend this output
    "solvable" : xxx,         (bool) Whether we know how to spend this output, ignoring the lack of keys
    "ps_rounds" : n           (numeric) The number of PS round
  }
  ,...
]

```

***Examples:***
```
> syscoin-cli listunspent 
> syscoin-cli listunspent 6 9999999 "[\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg\",\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcg\"]"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listunspent", "params": [6, 9999999 "[\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg\",\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcg\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
