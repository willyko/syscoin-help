## **`masternodelist`**

**`masternodelist ( "mode" "filter" )`**
Get a list of masternodes in different modes

***Arguments:***
```
1. "mode"      (string, optional/required to use filter, defaults = json) The mode to run list in
2. "filter"    (string, optional) Filter results. Partial match by outpoint by default in all modes,
                                    additional matches in some modes are also available

Available modes:
  activeseconds  - Print number of seconds masternode recognized by the network as enabled
                   (since latest issued "masternode start/start-many/initialize")
  addr           - Print ip address associated with a masternode (can be additionally filtered, partial match)
  daemon         - Print daemon version of a masternode (can be additionally filtered, exact match)
  full           - Print info in format 'status protocol payee lastseen activeseconds lastpaidtime lastpaidblock IP'
                   (can be additionally filtered, partial match)
  info           - Print info in format 'status protocol payee lastseen activeseconds sentinelversion sentinelstate IP'
                   (can be additionally filtered, partial match)
  json           - Print info in JSON format (can be additionally filtered, partial match)
  lastpaidblock  - Print the last block height a node was paid on the network
  lastpaidtime   - Print the last time a node was paid on the network
  lastseen       - Print timestamp of when a masternode was last seen on the network
  payee          - Print Syscoin address associated with a masternode (can be additionally filtered,
                   partial match)
  protocol       - Print protocol of a masternode (can be additionally filtered, exact match)
  pubkey         - Print the masternode (not collateral) public key
  rank           - Print rank of a masternode based on current block
  sentinel       - Print sentinel version of a masternode (can be additionally filtered, exact match)
  status         - Print masternode status: PRE_ENABLED / ENABLED / EXPIRED / SENTINEL_PING_EXPIRED / NEW_START_REQUIRED /
                   UPDATE_REQUIRED / POSE_BAN / OUTPOINT_SPENT (can be additionally filtered, partial match)
```
