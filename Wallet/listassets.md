## **`listassets`**

**`listassets [count] [from] [{options}]`**
scan through all assets.
[count]          (numeric, optional, unbounded=0, default=10) The number of results to return, 0 to return all.
[from]           (numeric, optional, default=0) The number of results to skip.
[options]        (object, optional) A json object with options to filter results
    {
      "txid":txid					(string) Transaction ID to filter results for
	     "asset":guid					(string) Asset GUID to filter.
      "alias":alias				(string) Owner alias name to filter.
      "startblock":block 	(number) Earliest block to filter from. Block number is the block at which the transaction would have confirmed.
    }
> syscoin-cli listassets 0
> syscoin-cli listassets 10 10
> syscoin-cli listassets 0 0 '{"alias":"owner-alias"}'
> syscoin-cli listassets 0 0 '{"asset":"32bff1fa844c124","alias":"owner-alias","startblock":0}'
