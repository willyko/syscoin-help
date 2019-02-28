## **`syscoinsetethstatus`**

**`syscoinsetethstatus [syncing_status] [highestBlock]`**
Sets ethereum syncing and network status for indication status of network sync.
[syncing_status]      Syncing status either 'syncing' or 'synced'.
[highestBlock]        What the highest block height on Ethereum is found to be. Usually coupled with syncing_status of 'syncing'. Set to 0 if syncing_status is 'synced'.
> syscoin-cli syscoinsetethheaders syncing 7000000
> syscoin-cli syscoinsetethheaders synced 0
