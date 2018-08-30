## **`listassets`**

**`listassets [count] [from] [{options}]`**
scan through all assets.
[count]          (numeric, optional, unbounded=0, default=10) The number of results to return, 0 to return all.
[from]           (numeric, optional, default=0) The number of results to skip.
[options]        (object, optional) A json object with options to filter results
    {
      "txid":txid					(string) Transaction ID to filter results for
	   "asset":guid					(string) Asset GUID to filter.
      "owner":string					(string) Alias or address to filter.
      "startblock":block 			(number) Earliest block to filter from. Block number is the block at which the transaction would have confirmed.
    }
> syscoin-cli listassets 0
> syscoin-cli listassets 10 10
> syscoin-cli listassets 0 0 '{"owner":"SfaT8dGhk1zaQkk8bujMfgWw3szxReej4S"}'
> syscoin-cli listassets 0 0 '{"asset":"32bff1fa844c124","owner":"SfaT8dGhk1zaQkk8bujMfgWw3szxReej4S","startblock":0}'
