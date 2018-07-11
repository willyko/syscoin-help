## **`listassetallocationtransactions`**

**`listassetallocationtransactions [count] [from] [{options}]`**
list asset allocations sent or recieved in this wallet.
[count]          (numeric, optional, default=10) The number of results to return, 0 to return all.
[from]           (numeric, optional, default=0) The number of results to skip.
[options]        (object, optional) A json object with options to filter results
    {
      "txid":txid					(string) Transaction ID to filter.
	     "asset":guid					(string) Asset GUID to filter.
      "sender":sender alias	(string) Sender alias name to filter.
      "receiver":receiver alias	(string) Receiver alias name to filter.
      "startblock":block 	(number) Earliest block to filter from. Block number is the block at which the transaction would have entered your mempool.
    }
> syscoin-cli listassetallocationtransactions 0 10
> syscoin-cli listassetallocationtransactions 0 0 '{"asset":"32bff1fa844c124","startblock":0}'
> syscoin-cli listassetallocationtransactions 0 0 '{"sender":"sender-alias","receiver":"receiver-alias"}'
> syscoin-cli listassetallocationtransactions 0 0 '{"txid":"1c7f966dab21119bac53213a2bc7532bff1fa844c124fd750a7d0b1332440bd1"}'
