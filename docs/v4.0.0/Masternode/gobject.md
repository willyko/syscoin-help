---
title: "gobject"
excerpt: ""
---
## **`gobject`**

**`gobject "command"...`**
Manage governance objects

**Available commands:**
```
  check              - Validate governance object data (proposal only)
  prepare            - Prepare governance object by signing and creating tx
  submit             - Submit governance object to network
  deserialize        - Deserialize governance object from hex string to JSON
  count              - Count governance objects and votes (additional param: 'json' or 'all', default: 'json')
  get                - Get governance object by hash
  getvotes           - Get all votes for a governance object hash (including old votes)
  getcurrentvotes    - Get only current (tallying) votes for a governance object hash (does not include old votes)
  list               - List governance objects (can be filtered by signal and/or object type)
  diff               - List differences since last diff
  vote-name          - Vote on a governance object by masternode name (using masternode.conf setup)
  vote-conf          - Vote on a governance object by masternode configured in syscoin.conf
  vote-many          - Vote on a governance object by all masternodes (using masternode.conf setup)
```
[block:api-header]
{
  "title": "gobject check"
}
[/block]
**`gobject check <hex>`**

Validate governance object data (proposal only)

***Arguments:***
```
1. "hex"     (string, required) The hex of the proposal JSON
```
[block:api-header]
{
  "title": "gobject prepare"
}
[/block]
**`gobject prepare <parent-hash> <revision> <time> <data-hex>`**

Prepare governance object by signing and creating tx

***Arguments:***
```
1. "parent-hash"     (string, required) The proposal hash of parent proposal ( 0 if it's a new proposal)
2. "revision"        (numeric, required) Revision count
3. "time"            (numeric, required) Current linux epoch time 
4. "data-hex"        (string, required) The hex of the proposal JSON
```
[block:api-header]
{
  "title": "gobject submit"
}
[/block]
**`gobject submit <parent-hash> <revision> <time> <data-hex> <fee-txid>`**

Submit governance object to network

***Arguments:***
```
1. "parent-hash"     (string, required) The proposal hash of parent proposal ( 0 if it's a new proposal)
2. "revision"        (numeric, required) Revision count
3. "time"            (numeric, required) Current linux epoch time 
4. "data-hex"        (string, required) The hex of the proposal JSON
5. "fee-txid"        (string, required) . TXID of proposla payment (result of successful gobject prepare)
```
[block:api-header]
{
  "title": "gobject deserialize"
}
[/block]
**`gobject submit <data-hex>`**

Deserialize governance object from hex string to JSON

***Arguments:***
```
1. "data-hex"        (string, required) The hex of the proposal JSON
```
[block:api-header]
{
  "title": "gobject count"
}
[/block]
**`gobject count ( "json"|"all" )`**

Count governance objects and votes (additional param: 'json' or 'all', default: 'json')

***Arguments:***
```
1. "json"|"all"          (string, optional) Option for the format of result
```
[block:api-header]
{
  "title": "gobject get"
}
[/block]
**`gobject get <governance-hash>`**

Get governance object by hash

***Arguments:***
```
1. "governance-hash"     (string, required) governance hash of the gobject 
```
[block:api-header]
{
  "title": "gobject getvotes"
}
[/block]
**`gobject getvotes <governance-hash>`**

Get all votes for a governance object hash (including old votes)

***Arguments:***
```
1. "governance-hash"     (string, required) governance hash of the gobject 
```
[block:api-header]
{
  "title": "gobject getcurrentvotes"
}
[/block]
**`gobject getcurrentvotes <governance-hash> [txid vout_index]`**

Get only current (tallying) votes for a governance object hash (does not include old votes)

***Arguments:***
```
1. "governance-hash"     (string, required) governance hash of the gobject 
2. "txid"                         (string, optional) transaction
3. "vout_index"              (string, optional) Vout index of the transaction
```
[block:api-header]
{
  "title": "gobject list"
}
[/block]
**`gobject list [option]`**

List governance objects (can be filtered by signal and/or object type)

***Arguments:***
```
1. "option"        (string, optional)   option should be one of 'valid', 'funding', 'delete', 'endorsed' or 'all'
```
[block:api-header]
{
  "title": "gobject diff"
}
[/block]
**`gobject diff [option]`**

List differences since last diff

***Arguments:***
```
1. "option"        (string, optional)   option should be one of 'valid', 'funding', 'delete', 'endorsed' or 'all'
```
[block:api-header]
{
  "title": "gobject vote-name"
}
[/block]
**`gobject vote-name <governance-hash> [funding|valid|delete] [yes|no|abstain] <masternode-name>`**

Vote on a governance object by masternode name (using masternode.conf setup)

***Arguments:***
```
1. "governance-hash"         (string, required) governance hash of the gobject 
2. "funding|valid|delete"    (string, required) type of vote to submit (one of funding, valid of delete)
3. "yes|no|abstain"          (string, required)  vote to submit (one of yes, no or abstain)
4. "masternode-name"         (string, required) masternode name according to masternode.conf
```
[block:api-header]
{
  "title": "gobject vote-conf"
}
[/block]
**`gobject vote-conf <governance-hash> [funding|valid|delete] [yes|no|abstain]`**

Vote on a governance object by masternode configured in syscoin.conf

***Arguments:***
```
1. "governance-hash"         (string, required) governance hash of the gobject 
2. "funding|valid|delete"    (string, required) type of vote to submit (one of funding, valid of delete)
3. "yes|no|abstain"          (string, required)  vote to submit (one of yes, no or abstain)
```
[block:api-header]
{
  "title": "gobject vote-many"
}
[/block]
**`gobject vote-many <governance-hash> [funding|valid|delete] [yes|no|abstain]`**

Vote on a governance object by all masternodes (using masternode.conf setup)

***Arguments:***
```
1. "governance-hash"         (string, required) governance hash of the gobject 
2. "funding|valid|delete"    (string, required) type of vote to submit (one of funding, valid of delete)
3. "yes|no|abstain"          (string, required)  vote to submit (one of yes, no or abstain)
```