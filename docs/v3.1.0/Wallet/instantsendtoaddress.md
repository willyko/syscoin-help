## **`instantsendtoaddress`**

**`instantsendtoaddress "address" amount ( "comment" "comment-to" subtractfeefromamount )`**

Send an amount to a given address. The amount is a real and is rounded to the nearest 0.00000001

***Arguments:***

```
1. "address"     (string, required) The syscoin address to send to.
2. "amount"      (numeric, required) The amount in SYS to send. eg 0.1
3. "comment"     (string, optional) A comment used to store what the transaction is for. 
                             This is not part of the transaction, just kept in your wallet.
4. "comment_to"  (string, optional) A comment to store the name of the person or organization 
                             to which you're sending the transaction. This is not part of the 
                             transaction, just kept in your wallet.
5. subtractfeefromamount  (boolean, optional, default=false) The fee will be deducted from the amount being sent.
                             The recipient will receive less amount of Syscoin than you enter in the amount field.

```



***Result:***

```
"transactionid"  (string) The transaction id.

```



***Examples:***

```
> syscoin-cli instantsendtoaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.1
> syscoin-cli instantsendtoaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.1 "donation" "seans outpost"
> syscoin-cli instantsendtoaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.1 "" "" true
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "instantsendtoaddress", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", 0.1, "donation", "seans outpost"] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
