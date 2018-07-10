## **`aliaspay`**

**`aliaspay aliasfrom {"address":amount,...} (instantsend subtractfeefromamount)`**

Send multiple times from an alias. Amounts are double-precision floating point numbers.
Requires wallet passphrase to be set with walletpassphrase call.

***Arguments:***
```
1. "aliasfrom"			(string, required) Alias to pay from
2. "amounts"             (string, required) A json object with aliases and amounts
    {
      "address":amount   (numeric or string) The syscoin address is the key, the numeric amount (can be string) in SYS is the value
      ,...
    }
3. instantsend				(boolean, optional) Set to true to use InstantSend to send this transaction or false otherwise. Default is false.
4. subtractfeefromamount   (string, optional) A json array with addresses.
                           The fee will be equally deducted from the amount of each selected address.
                           Those recipients will receive less syscoins than you enter in their corresponding amount field.
                           If no addresses are specified here, the sender pays the fee.
    [
      "address"            (string) Subtract fee from this address
      ,...
    ]

```

***Result:***
```
"transaction hex"          (string) The transaction hex (unsigned) for signing and sending. Only 1 transaction is created regardless of 
                                    the number of addresses.

```

***Examples:***
```

Send two amounts to two different aliases:
> syscoin-cli aliaspay "senderalias" "{\"alias1\":0.01,\"alias2\":0.02}"

Send two amounts to two different addresses setting IS and comment:
> syscoin-cli aliaspay "senderalias" "{\"Sa8H1Mq4pd6z3N4xFzxvVah9AWzZyykJiJ\":0.01,\"SkbcpmjqkERwvPPqke3puu9k9bCdHLaVoP\":0.02}" true "testing"

Send two amounts to two different addresses, subtract fee from amount:
> syscoin-cli aliaspay "senderalias" "{\"Sa8H1Mq4pd6z3N4xFzxvVah9AWzZyykJiJ\":0.01,\"SkbcpmjqkERwvPPqke3puu9k9bCdHLaVoP\":0.02}" false "" "[\"Sa8H1Mq4pd6z3N4xFzxvVah9AWzZyykJiJ\",\"SkbcpmjqkERwvPPqke3puu9k9bCdHLaVoP\"]"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "aliaspay", "params": ["senderalias", {"Sa8H1Mq4pd6z3N4xFzxvVah9AWzZyykJiJ":0.01,"SkbcpmjqkERwvPPqke3puu9k9bCdHLaVoP":0.02}, false, "testing"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
