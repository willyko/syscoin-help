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
  initialize  - Start single remote masternode by assigned name configured in masternode.conf
  start-<mode> - Start remote masternodes configured in masternode.conf (<mode>: 'all', 'missing', 'disabled')
  status       - Print masternode status information
  list         - Print list of all known masternodes (see masternodelist for more info)
  list-conf    - Print masternode.conf in JSON format
  winner       - Print info on next masternode winner to vote for
  winners      - Print list of masternode winners
```
