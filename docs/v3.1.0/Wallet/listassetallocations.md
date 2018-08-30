## **`listassetallocations`**

**`listassetallocations [count] [from] [{options}]`**
scan through all asset allocations.
[count]          (numeric, optional, unbounded=0, default=10) The number of results to return, 0 to return all.
[from]           (numeric, optional, default=0) The number of results to skip.
[options]        (array, optional) A json object with options to filter results
    {
      "txid":txid					(string) Transaction ID to filter.
	   "asset":guid					(string) Asset GUID to filter.
      "receiver_alias":string		(string) Receiver alias to filter.
      "receiver_address":string		(string) Receiver address to filter.
      "startblock":block				(number) Earliest block to filter from. Block number is the block at which the transaction would have confirmed.
    }
> syscoin-cli listassetallocations 0
> syscoin-cli listassetallocations 10 10
> syscoin-cli listassetallocations 0 0 '{"asset":"32bff1fa844c124","startblock":0}'
> syscoin-cli listassetallocations 0 0 '{"receiver_address":"SfaMwYY19Dh96B9qQcJQuiNykVRTzXMsZR"}'
> syscoin-cli listassetallocations 0 0 '{"txid":"1c7f966dab21119bac53213a2bc7532bff1fa844c124fd750a7d0b1332440bd1"}'
