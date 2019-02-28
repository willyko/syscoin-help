## **`gettxout`**

**`gettxout "txid" n ( include_mempool )`**

Returns details about an unspent transaction output.

***Arguments:***

```
1. "txid"             (string, required) The transaction id
2. "n"                (numeric, required) vout number
3. "include_mempool"  (boolean, optional) Whether to include the mempool. Default: true.     Note that an unspent output that is spent in the mempool won't appear.

```



***Result:***

```
{
  "bestblock":  "hash",    (string) The hash of the block at the tip of the chain
  "confirmations" : n,       (numeric) The number of confirmations
  "value" : x.xxx,           (numeric) The transaction value in SYS
  "scriptPubKey" : {         (json object)
     "asm" : "code",       (string) 
     "hex" : "hex",        (string) 
     "reqSigs" : n,          (numeric) Number of required signatures
     "type" : "pubkeyhash", (string) The type, eg pubkeyhash
     "addresses" : [          (array of string) array of syscoin addresses
        "address"     (string) syscoin address
        ,...
     ]
  },
  "coinbase" : true|false   (boolean) Coinbase or not
}

```



***Examples:***

```

Get unspent transactions
> syscoin-cli listunspent 

View the details
> syscoin-cli gettxout "txid" 1

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "gettxout", "params": ["txid", 1] }' -H 'content-type: text/plain;' http://127.0.0.1:8370/
```
