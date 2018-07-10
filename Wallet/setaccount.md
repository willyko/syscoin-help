## **`setaccount`**

**`setaccount "address" "account"`**

DEPRECATED. Sets the account associated with the given address.

***Arguments:***
```
1. "address"         (string, required) The syscoin address to be associated with an account.
2. "account"         (string, required) The account to assign the address to.

```

***Examples:***
```
> syscoin-cli setaccount "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" "tabby"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "setaccount", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", "tabby"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
