## **`assetallocationsenderstatus`**

**`assetallocationsenderstatus <asset> <owner> <txid>`**
Show status as it pertains to any current Z-DAG conflicts or warnings related to a sender or sender/txid combination of an asset allocation transfer. Leave txid empty if you are not checking for a specific transfer.
Return value is in the status field and can represent 3 levels(0, 1 or 2)
Level -1 means not found, not a ZDAG transaction, perhaps it is already confirmed.
Level 0 means OK.
Level 1 means warning (checked that in the mempool there are more spending balances than current POW sender balance). An active stance should be taken and perhaps a deeper analysis as to potential conflicts related to the sender.
Level 2 means an active double spend was found and any depending asset allocation sends are also flagged as dangerous and should wait for POW confirmation before proceeding.
