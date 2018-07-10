## **`listaliases`**

**`listaliases [count] [from] [{options}]]`**
scan through all aliases.
[count]          (numeric, optional, unbounded=0, default=10) The number of results to return, 0 returns all.
[from]           (numeric, optional, default=0) The number of results to skip.
[options]        (object, optional) A json object with options to filter results
    {
      "txid":txid					(string) Transaction ID to filter results for
      "alias":alias				(string) Alias name to filter.
      "startblock":block   (number) Earliest block to filter from. Block number is the block at which the transaction would have confirmed.
    }
> syscoin-cli listaliases 0
> syscoin-cli listaliases 10 10
> syscoin-cli listaliases 0 0 '{"alias":"find-this-alias"}'
> syscoin-cli listaliases 0 0 '{"txid":"1c7f966dab21119bac53213a2bc7532bff1fa844c124fd750a7d0b1332440bd1","startblock":0}'
