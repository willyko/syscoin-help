## **`syscointxfund`**

**`syscointxfund`**

Funds a new syscoin transaction with inputs used from the wallet or an option array of addresses. If no addresses
are specified a new change address is created. When creating an alias via aliasnew it is recommended to specify
the same address you assigned to the alias in the addresses argument.

***Arguments:***
```
  "hexstring" (string, required) The raw syscoin transaction output given from rpc (ie: aliasnew, aliasupdate)
  "addresses (object, optional) "
    [
      "address"  (array, string) Address used to fund this transaction. Leave empty to use wallet. Change is sent to the last address in the array.
      ,...
    ]
	"instantsend" (boolean, optional, default=false) Use InstantSend to send this transaction. 
}

```

***Examples:***
```
> syscoin-cli syscointxfund  <hexstring> '{"addresses": ["175tWpb8K1S7NmH4Zx6rewF9WQrcZv245W"]}' false
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "syscointxfund", "params": [ <hexstring> {"addresses": ["175tWpb8K1S7NmH4Zx6rewF9WQrcZv245W"]} true] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/

Requires wallet passphrase to be set with walletpassphrase call.
```
