## **`combinepsbt`**

**`combinepsbt ["psbt",...]`**

Combine multiple partially signed Syscoin transactions into one transaction.
Implements the Combiner role.

***Arguments:***

```
1. "txs"                   (string) A json array of base64 strings of partially signed transactions
    [
      "psbt"             (string) A base64 string of a PSBT
      ,...
    ]

```



***Result:***

```
  "psbt"          (string) The base64-encoded partially signed transaction

```



***Examples:***

```
> syscoin-cli combinepsbt ["mybase64_1", "mybase64_2", "mybase64_3"]
```
