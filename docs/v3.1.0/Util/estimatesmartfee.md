## **`estimatesmartfee`**

**`estimatesmartfee nblocks`**

WARNING: This interface is unstable and may disappear or change!

Estimates the approximate fee per kilobyte needed for a transaction to begin
confirmation within nblocks blocks if possible and return the number of blocks
for which the estimate is valid.

***Arguments:***

```
1. nblocks     (numeric)

```



***Result:***

```
{
  "feerate" : x.x,     (numeric) estimate fee-per-kilobyte (in SYS)
  "blocks" : n         (numeric) block number where estimate was found
}

A negative value is returned if not enough transactions and blocks
have been observed to make an estimate for any number of blocks.
However it will not return a value below the mempool reject fee.

Example:
> syscoin-cli estimatesmartfee 6
```
