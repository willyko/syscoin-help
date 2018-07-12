## **`estimatesmartpriority`**

**`estimatesmartpriority nblocks`**

DEPRECATED. WARNING: This interface is unstable and may disappear or change!

Estimates the approximate priority a zero-fee transaction needs to begin
confirmation within nblocks blocks if possible and return the number of blocks
for which the estimate is valid.

***Arguments:***
```
1. nblocks     (numeric, required)

```

***Result:***
```
{
  "priority" : x.x,    (numeric) estimated priority
  "blocks" : n         (numeric) block number where estimate was found
}

A negative value is returned if not enough transactions and blocks
have been observed to make an estimate for any number of blocks.
However if the mempool reject fee is set it will return 1e9 * MAX_MONEY.

Example:
> syscoin-cli estimatesmartpriority 6
```
