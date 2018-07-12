## **`sendtoaddress`**

**`sendtoaddress "address" amount ( "comment" "comment_to" subtractfeefromamount use_is use_ps )`**

Send an amount to a given address.

Requires wallet passphrase to be set with walletpassphrase call.
***Arguments:***
```
1. "address"            (string, required) The syscoin address to send to.
2. "amount"             (numeric or string, required) The amount in SYS to send. eg 0.1
3. "comment"            (string, optional) A comment used to store what the transaction is for. 
                             This is not part of the transaction, just kept in your wallet.
4. "comment_to"         (string, optional) A comment to store the name of the person or organization 
                             to which you're sending the transaction. This is not part of the 
                             transaction, just kept in your wallet.
5. subtractfeefromamount  (boolean, optional, default=false) The fee will be deducted from the amount being sent.
                             The recipient will receive less amount of Syscoin than you enter in the amount field.
6. "use_is"             (bool, optional) Send this transaction as InstantSend (default: false)
7. "use_ps"             (bool, optional) Use anonymized funds only (default: false)

```

***Result:***
```
"txid"                  (string) The transaction id.

```

***Examples:***
```
> syscoin-cli sendtoaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.1
> syscoin-cli sendtoaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.1 "donation" "seans outpost"
> syscoin-cli sendtoaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.1 "" "" true
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendtoaddress", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", 0.1, "donation", "seans outpost"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
