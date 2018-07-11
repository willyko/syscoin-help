## **`listoffers`**

**`listoffers [count] [from] [{options}]`**
scan through all offers.
[count]          (numeric, optional, unbounded=0, default=10) The number of results to return, 0 to return all.
[from]           (numeric, optional, default=0) The number of results to skip.
[options]        (object, optional) A json object with options to filter results
    {
      "txid":txid				(string) Transaction ID to filter.
	     "offer":guid				(string) Offer GUID to filter.
      "alias":alias			(string) Alias name to filter.
      "startblock":block	(number) Earliest block to filter from. Block number is the block at which the transaction would have confirmed.
    }
> syscoin-cli listoffers 0
> syscoin-cli listoffers 10 10
> syscoin-cli listoffers 0 0 '{"offer":"32bff1fa844c124","startblock":0}'
> syscoin-cli listoffers 0 0 '{"alias":"offer-owner-alias"}'
> syscoin-cli listoffers 0 0 '{"txid":"1c7f966dab21119bac53213a2bc7532bff1fa844c124fd750a7d0b1332440bd1"}'
