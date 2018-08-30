## **`getaddressbalance`**

**`getaddressbalance`**

Returns the balance for an address(es) (requires addressindex to be enabled).

***Arguments:***

```
1. {
  "addresses"
    [
      "address"  (string) The base58check encoded address
      ,...
    ]
}
2. separated_output(boolean) If set to true, will return balances of the addresses passed in as an array instead of the summed balance. Default is false.

```



***Result:***

```
{
  "balance"  (string) The current balance in satoshis
  "received"  (string) The total number of satoshis received (including change)
}

```



***Examples:***

```
> syscoin-cli getaddressbalance '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}' true
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressbalance", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
