## **`syscointxfund`**

**`syscointxfund`**

Funds a new syscoin transaction with inputs used from wallet or an array of addresses specified.

***Arguments:***

```
  "hexstring" (string, required) The raw syscoin transaction output given from rpc (ie: assetnew, assetupdate)
  "address"  (string, required) Address belonging to this asset transaction. 
  "output_index"  (number, optional) Output index from available UTXOs in address. Defaults to selecting all that are needed to fund the transaction. 

```



***Examples:***

```
> syscoin-cli syscointxfund  <hexstring> "175tWpb8K1S7NmH4Zx6rewF9WQrcZv245W"
> syscoin-cli syscointxfund  <hexstring> "175tWpb8K1S7NmH4Zx6rewF9WQrcZv245W" 0
```
