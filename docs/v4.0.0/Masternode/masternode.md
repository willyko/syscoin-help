---
title: "masternode"
excerpt: ""
---
## **`masternode`**

**`masternode "command"...`**
Set of commands to execute masternode related actions

***Arguments:***
```
1. "command"        (string or set of strings, required) The command to execute
```

***Available commands:***
```
  count        - Get information about number of masternodes (DEPRECATED options: 'total', 'ps', 'enabled', 'qualify', 'all')
  current      - Print info on current masternode winner to be paid the next block (calculated locally)
  genkey       - Generate new masternodeprivkey
  outputs      - Print masternode compatible outputs
  initialize   - Start single remote masternode by assigned name configured in masternode.conf
  start-<mode> - Start remote masternodes configured in masternode.conf (<mode>: 'all', 'missing', 'disabled')
  status       - Print masternode status information
  list         - Print list of all known masternodes (see masternodelist for more info)
  list-conf    - Print masternode.conf in JSON format
  winner       - Print info on next masternode winner to vote for
  winners      - Print list of masternode winners
```
[block:api-header]
{
  "title": "masternode count"
}
[/block]
**`masternode count ( "json"|"all" )`**

Get information about number of masternodes (DEPRECATED options: 'total', 'ps', 'enabled', 'qualify', 'all')

***Arguments:***
```
1. "json"|"all"          (string, optional) Option for the format of result
```
[block:api-header]
{
  "title": "masternode current"
}
[/block]
**`masternode current`**

Print info on current masternode winner to be paid the next block (calculated locally)
[block:api-header]
{
  "title": "masternode genkey"
}
[/block]
**`masternode genkey`**

Generate new masternodeprivkey
[block:api-header]
{
  "title": "masternode outputs"
}
[/block]
**`masternode outputs`**

Print masternode compatible outputs
[block:api-header]
{
  "title": "masternode initialize"
}
[/block]
**`masternode initialize <name>`**

Start single remote masternode by assigned name configured in masternode.conf

***Arguments:***
```
1. "name"            (string, required) name of masternode as defined in masternode.conf
```
[block:api-header]
{
  "title": "masternode start-<mode>"
}
[/block]
**`masternode start-all`**
**`masternode start-missing`**
**`masternode start-disabled`**

Start remote masternodes configured in masternode.conf (<mode>: 'all', 'missing', 'disabled')
[block:api-header]
{
  "title": "masternode status"
}
[/block]
**`masternode status`**

Print masternode status information
[block:api-header]
{
  "title": "masternode list"
}
[/block]
**`masternode list`**

Print list of all known masternodes (see masternodelist for more info)
[block:api-header]
{
  "title": "masternode list-conf"
}
[/block]
**`masternode list-conf`**

Print masternode.conf in JSON format
[block:api-header]
{
  "title": "masternode winner"
}
[/block]
**`masternode winner`**

Print info on next masternode winner to vote for
[block:api-header]
{
  "title": "masternode winners"
}
[/block]
**`masternode winners`**

Print list of masternode winners