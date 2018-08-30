## **`addmultisigaddress`**

**`addmultisigaddress nrequired ["key",...] ( "account" )`**

Add a nrequired-to-sign multisignature address to the wallet.
Each key is a Syscoin address or hex-encoded public key.
If 'account' is specified (DEPRECATED), assign address to that account.

***Arguments:***

```
1. nrequired        (numeric, required) The number of required signatures out of the n keys or addresses.
2. "keys"         (string, required) A json array of syscoin addresses or hex-encoded public keys
     [
       "address"  (string) syscoin address or hex-encoded public key
       ...,
     ]
3. "account"      (string, optional) DEPRECATED. An account to assign the addresses to.

```



***Result:***

```
"address"         (string) A syscoin address associated with the keys.

```



***Examples:***

```

Add a multisig address from 2 addresses
> syscoin-cli addmultisigaddress 2 "[\"Xt4qk9uKvQYAonVGSZNXqxeDmtjaEWgfrS\",\"XoSoWQkpgLpppPoyyzbUFh1fq2RBvW6UK2\"]"

As json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "addmultisigaddress", "params": [2, "[\"Xt4qk9uKvQYAonVGSZNXqxeDmtjaEWgfrS\",\"XoSoWQkpgLpppPoyyzbUFh1fq2RBvW6UK2\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
