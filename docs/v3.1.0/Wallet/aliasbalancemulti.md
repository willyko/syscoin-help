## **`aliasbalancemulti`**

**`aliasbalancemulti { "aliases" : ["aliasname1","aliasname2",...] } instantsend`**

Returns an array of balances based on an array of aliases passed in, internally calls aliasbalance for each alias.

***Arguments:***

```
1. "aliases"  (array, required) The syscoin aliases to find balances for. Must be an array.
2. "instantsend"  (boolean, optional) Check for balance available to instant send. Default is false.
```
