## **`dumphdinfo`**

**`dumphdinfo`**
Returns an object containing sensitive private info about this HD wallet.





***Result:***

```
{
  "hdseed": "seed",                    (string) The HD seed (bip32, in hex)
  "mnemonic": "words",                 (string) The mnemonic for this HD wallet (bip39, english words) 
  "mnemonicpassphrase": "passphrase",  (string) The mnemonic passphrase for this HD wallet (bip39)
}

```



***Examples:***

```
> syscoin-cli dumphdinfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "dumphdinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
