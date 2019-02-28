## **`listassetallocations`**

**`listassetallocations [count] [from] [{options}]`**
scan through all asset allocations.
[count]          (numeric, optional, default=10) The number of results to return.
[from]           (numeric, optional, default=0) The number of results to skip.
[options]        (array, optional) A json object with options to filter results
    {
	   "asset":guid					(number) Asset GUID to filter.
	   "addresses"					(array) a json array with addresses owning allocations
		[
			{
				"address":string		(string) Address to filter.
			} 
			,...
		]
    }
> syscoin-cli listassetallocations 0
> syscoin-cli listassetallocations 10 10
> syscoin-cli listassetallocations 0 0 '{"asset":92922}'
> syscoin-cli listassetallocations 0 0 '{"addresses":[{"address":"SfaMwYY19Dh96B9qQcJQuiNykVRTzXMsZR"},{"address":"SfaMwYY19Dh96B9qQcJQuiNykVRTzXMsZR"}]}'
