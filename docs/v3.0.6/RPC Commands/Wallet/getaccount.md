## **`getaccount`**

**`getaccount "address"`**

DEPRECATED. Returns the account associated with the given address.

***Arguments:***
```
1. "address"         (string, required) The syscoin address for account lookup.

```

***Result:***
```
"accountname"        (string) the account address

```

***Examples:***
```
> syscoin-cli getaccount "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaccount", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
