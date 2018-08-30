## **`sendmany`**

**`sendmany "fromaccount" {"address":amount,...} ( minconf addlocked "comment" ["address",...] subtractfeefromamount use_is use_ps )`**

Send multiple times. Amounts are double-precision floating point numbers.

***Arguments:***

```
1. "fromaccount"           (string, required) DEPRECATED. The account to send the funds from. Should be "" for the default account
2. "amounts"               (string, required) A json object with addresses and amounts
    {
      "address":amount     (numeric or string) The syscoin address is the key, the numeric amount (can be string) in SYS is the value
      ,...
    }
3. minconf                 (numeric, optional, default=1) Only use the balance confirmed at least this many times.
4. addlocked               (bool, optional, default=false) Whether to include transactions locked via InstantSend.
5. "comment"               (string, optional) A comment
6. subtractfeefromamount   (array, optional) A json array with addresses.
                           The fee will be equally deducted from the amount of each selected address.
                           Those recipients will receive less syscoins than you enter in their corresponding amount field.
                           If no addresses are specified here, the sender pays the fee.
    [
      "address"          (string) Subtract fee from this address
      ,...
    ]
7. "use_is"                (bool, optional) Send this transaction as InstantSend (default: false)
8. "use_ps"                (bool, optional) Use anonymized funds only (default: false)

```



***Result:***

```
"txid"                   (string) The transaction id for the send. Only 1 transaction is created regardless of 
                                    the number of addresses.

```



***Examples:***

```

Send two amounts to two different addresses:
> syscoin-cli sendmany "tabby" "{\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG\":0.01,\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcG\":0.02}"

Send two amounts to two different addresses setting the confirmation and comment:
> syscoin-cli sendmany "tabby" "{\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG\":0.01,\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcG\":0.02}" 6 false "testing"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendmany", "params": ["tabby", "{\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG\":0.01,\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcG\":0.02}", 6, false, "testing"] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
