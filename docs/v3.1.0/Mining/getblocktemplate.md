## **`getblocktemplate`**

**`getblocktemplate ( TemplateRequest )`**

If the request parameters include a 'mode' key, that is used to explicitly select between the default 'template' request or a 'proposal'.
It returns data needed to construct a block to work on.
For full specification, see BIPs 22, 23, and 9:
    https://github.com/syscoin/bips/blob/master/bip-0022.mediawiki
    https://github.com/syscoin/bips/blob/master/bip-0023.mediawiki
    https://github.com/syscoin/bips/blob/master/bip-0009.mediawiki#getblocktemplate_changes

***Arguments:***

```
1. template_request         (json object, optional) A json object in the following spec
     {
       "mode":"template"    (string, optional) This must be set to "template", "proposal" (see BIP 23), or omitted
       "capabilities":[     (array, optional) A list of strings
           "support"          (string) client side supported feature, 'longpoll', 'coinbasetxn', 'coinbasevalue', 'proposal', 'serverlist', 'workid'
           ,...
       ],
       "rules":[            (array, optional) A list of strings
           "support"          (string) client side supported softfork deployment
           ,...
       ]
     }


```



***Result:***

```
{
  "capabilities" : [ "capability", ... ],    (array of strings) specific client side supported features
  "version" : n,                    (numeric) The preferred block version
  "rules" : [ "rulename", ... ],    (array of strings) specific block rules that are to be enforced
  "vbavailable" : {                 (json object) set of pending, supported versionbit (BIP 9) softfork deployments
      "rulename" : bitnumber          (numeric) identifies the bit number as indicating acceptance and readiness for the named softfork rule
      ,...
  },
  "vbrequired" : n,                 (numeric) bit mask of versionbits the server requires set in submissions
  "previousblockhash" : "xxxx",     (string) The hash of current highest block
  "transactions" : [                (array) contents of non-coinbase transactions that should be included in the next block
      {
         "data" : "xxxx",             (string) transaction data encoded in hexadecimal (byte-for-byte)
         "hash" : "xxxx",             (string) hash/id encoded in little-endian hexadecimal
         "depends" : [                (array) array of numbers 
             n                          (numeric) transactions before this one (by 1-based index in 'transactions' list) that must be present in the final block if this one is
             ,...
         ],
         "fee": n,                    (numeric) difference in value between transaction inputs and outputs (in satoshis); for coinbase transactions, this is a negative Number of the total collected block fees (ie, not including the block subsidy); if key is not present, fee is unknown and clients MUST NOT assume there isn't one
         "sigops" : n,                (numeric) total number of SigOps, as counted for purposes of block limits; if key is not present, sigop count is unknown and clients MUST NOT assume there aren't any
         "required" : true|false      (boolean) if provided and true, this transaction must be in the final block
      }
      ,...
  ],
  "coinbaseaux" : {                 (json object) data that should be included in the coinbase's scriptSig content
      "flags" : "xx"                  (string) key name is to be ignored, and value included in scriptSig
  },
  "coinbasevalue" : n,              (numeric) maximum allowable input to coinbase transaction, including the generation award and transaction fees (in satoshis)
  "coinbasetxn" : { ... },          (json object) information for coinbase transaction
  "target" : "xxxx",                (string) The hash target
  "mintime" : xxx,                  (numeric) The minimum timestamp appropriate for next block time in seconds since epoch (Jan 1 1970 GMT)
  "mutable" : [                     (array of string) list of ways the block template may be changed 
     "value"                          (string) A way the block template may be changed, e.g. 'time', 'transactions', 'prevblock'
     ,...
  ],
  "noncerange" : "00000000ffffffff",(string) A range of valid nonces
  "sigoplimit" : n,                 (numeric) limit of sigops in blocks
  "sizelimit" : n,                  (numeric) limit of block size
  "curtime" : ttt,                  (numeric) current timestamp in seconds since epoch (Jan 1 1970 GMT)
  "bits" : "xxxxxxxx",              (string) compressed target of next block
  "height" : n                      (numeric) The height of the next block
  "masternode" : {                  (json object) required masternode payee that must be included in the next block
      "payee" : "xxxx",             (string) payee address
      "script" : "xxxx",            (string) payee scriptPubKey
      "amount": n                   (numeric) required amount to pay
  },
  "masternode_payments_started" :  true|false, (boolean) true, if masternode payments started
  "masternode_payments_enforced" : true|false, (boolean) true, if masternode payments are enforced
  "superblock" : [                  (array) required superblock payees that must be included in the next block
      {
         "payee" : "xxxx",          (string) payee address
         "script" : "xxxx",         (string) payee scriptPubKey
         "amount": n                (numeric) required amount to pay
      }
      ,...
  ],
  "superblocks_started" : true|false, (boolean) true, if superblock payments started
  "superblocks_enabled" : true|false  (boolean) true, if superblock payments are enabled
}

```



***Examples:***

```
> syscoin-cli getblocktemplate 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblocktemplate", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
