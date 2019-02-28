## **`getgovernanceinfo`**

**`getgovernanceinfo`**
Returns an object containing governance parameters.





***Result:***

```
{
  "governanceminquorum": xxxxx,           (numeric) the absolute minimum number of votes needed to trigger a governance action
  "masternodewatchdogmaxseconds": xxxxx,  (numeric) sentinel watchdog expiration time in seconds (DEPRECATED)
  "sentinelpingmaxseconds": xxxxx,        (numeric) sentinel ping expiration time in seconds
  "proposalfee": xxx.xx,                  (numeric) the collateral transaction fee which must be paid to create a proposal in SYS
  "superblockcycle": xxxxx,               (numeric) the number of blocks between superblocks
  "lastsuperblock": xxxxx,                (numeric) the block number of the last superblock
  "nextsuperblock": xxxxx,                (numeric) the block number of the next superblock
  "maxgovobjdatasize": xxxxx,             (numeric) maximum governance object data size in bytes
}

```



***Examples:***

```
> syscoin-cli getgovernanceinfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getgovernanceinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8370/
```
