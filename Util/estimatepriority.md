## **`estimatepriority`**

**`estimatepriority nblocks`**

DEPRECATED. Estimates the approximate priority a zero-fee transaction needs to begin
confirmation within nblocks blocks.

***Arguments:***
```
1. nblocks     (numeric, required)

```

***Result:***
```
n              (numeric) estimated priority

A negative value is returned if not enough transactions and blocks
have been observed to make an estimate.

Example:
> syscoin-cli estimatepriority 6
```
