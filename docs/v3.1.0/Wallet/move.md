## **`move`**

**`move "fromaccount" "toaccount" amount ( minconf "comment" )`**

DEPRECATED. Move a specified amount from one account in your wallet to another.

***Arguments:***

```
1. "fromaccount"    (string, required) The name of the account to move funds from. May be the default account using "".
2. "toaccount"      (string, required) The name of the account to move funds to. May be the default account using "".
3. amount           (numeric) Quantity of SYS to move between accounts.
4. (dummy)          (numeric, optional) Ignored. Remains for backward compatibility.
5. "comment"        (string, optional) An optional comment, stored in the wallet only.

```



***Result:***

```
true|false          (boolean) true if successful.

```



***Examples:***

```

Move 0.01 SYS from the default account to the account named tabby
> syscoin-cli move "" "tabby" 0.01

Move 0.01 SYS timotei to akiko with a comment and funds have 6 confirmations
> syscoin-cli move "timotei" "akiko" 0.01 6 "happy birthday!"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "move", "params": ["timotei", "akiko", 0.01, 6, "happy birthday!"] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```