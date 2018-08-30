## **`tpstestadd`**

**`tpstestadd [starttime] [{"tx":"hex"},...]`**

Adds raw transactions to the test raw tx queue to be sent to the network at starttime.

***Arguments:***

```
1. starttime                  (numeric, required) Unix epoch time in micro seconds for when to send the raw transaction queue to the network. If set to 0, will not send transactions until you call this function again with a defined starttime.
2. "raw transactions"                (array, not-required) A json array of signed raw transaction strings
     [
       {
         "tx":"hex",    (string, required) The transaction hex
       } 
       ,...
     ]

Example:
> syscoin-cli tpstestadd "223233433839384" "[{\"tx\":\"first raw hex tx\"},{\"tx\":\"second raw hex tx\"}]"
```
