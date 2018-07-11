## **`sendfrom`**

**`sendfrom "fromaccount" "toaddress" amount ( minconf addlockconf "comment" "comment_to" )`**

DEPRECATED (use sendtoaddress). Sent an amount from an account to a syscoin address.
Requires wallet passphrase to be set with walletpassphrase call.

***Arguments:***
```
1. "fromaccount"       (string, required) The name of the account to send funds from. May be the default account using "".
                       Specifying an account does not influence coin selection, but it does associate the newly created
                       transaction with the account, so the account's balance computation and transaction history can reflect
                       the spend.
2. "toaddress"         (string, required) The syscoin address to send funds to.
3. amount              (numeric or string, required) The amount in SYS (transaction fee is added on top).
4. minconf             (numeric, optional, default=1) Only use funds with at least this many confirmations.
5. addlockconf         (bool, optional, default=false) Whether to add 5 confirmations to transactions locked via InstantSend.
6. "comment"           (string, optional) A comment used to store what the transaction is for. 
                       This is not part of the transaction, just kept in your wallet.
7. "comment_to"        (string, optional) An optional comment to store the name of the person or organization 
                       to which you're sending the transaction. This is not part of the transaction, 
                       it is just kept in your wallet.

```

***Result:***
```
"txid"                 (string) The transaction id.

```

***Examples:***
```

Send 0.01 SYS from the default account to the address, must have at least 1 confirmation
> syscoin-cli sendfrom "" "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.01

Send 0.01 from the tabby account to the given address, funds must have at least 6 confirmations
> syscoin-cli sendfrom "tabby" "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.01 6 false "donation" "seans outpost"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendfrom", "params": ["tabby", "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", 0.01, 6, false, "donation", "seans outpost"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
