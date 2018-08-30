## **`gobject`**

**`gobject "command"...`**
Manage governance objects





***Available commands:***

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
  vote-name         - Vote on a governance object by masternode name (using masternode.conf setup)
  vote-conf          - Vote on a governance object by masternode configured in syscoin.conf
  vote-many          - Vote on a governance object by all masternodes (using masternode.conf setup)
```
