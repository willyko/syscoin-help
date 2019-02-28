## **`listassets`**

**`listassets [count] [from] [{options}]`**
scan through all assets.
[count]          (numeric, optional, default=10) The number of results to return.
[from]           (numeric, optional, default=0) The number of results to skip.
[options]        (object, optional) A json object with options to filter results
    {
      "txid":txid					(string) Transaction ID to filter results for
	   "asset":guid					(number) Asset GUID to filter.
	   "addresses"			        (array) a json array with owners
		[
			{
				"address":string		(string) Address to filter.
			} 
			,...
		]
    }
> syscoin-cli listassets 0
> syscoin-cli listassets 10 10
> syscoin-cli listassets 0 0 '{"addresses":[{"address":"SfaMwYY19Dh96B9qQcJQuiNykVRTzXMsZR"},{"address":"SfaMwYY19Dh96B9qQcJQuiNykVRTzXMsZR"}]}'
> syscoin-cli listassets 0 0 '{"asset":3473733}'
