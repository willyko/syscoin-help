## **`convertaddress`**

**`convertaddress "address"`**

Convert between Syscoin 3 and Syscoin 4 formats. P2WPKH can be shown as P2PKH in Syscoin 3.

***Arguments:***

```
1. "address"                    (string, required) The syscoin address to get the information of.

```



***Result:***

```
{
  "v3address" : "address",        (string) The syscoin 3 address validated
  "v4address" : "address",        (string) The syscoin 4 address validated
}

```



***Examples:***

```
> syscoin-cli getaddressinfo "sys1qw40fdue7g7r5ugw0epzk7xy24tywncm26hu4a7"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressinfo", "params": ["sys1qw40fdue7g7r5ugw0epzk7xy24tywncm26hu4a7"] }' -H 'content-type: text/plain;' http://127.0.0.1:8370/
```
