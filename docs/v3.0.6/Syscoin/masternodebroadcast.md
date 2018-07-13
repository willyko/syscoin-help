## **`masternodebroadcast`**

**`masternodebroadcast "command"...`**
Set of commands to create and relay masternode broadcast messages

***Arguments:***
```
1. "command"        (string or set of strings, required) The command to execute

```

***Available commands:***
```
  create-name  - Create single remote masternode broadcast message by assigned name configured in masternode.conf
  create-all    - Create remote masternode broadcast messages for all masternodes configured in masternode.conf
  decode        - Decode masternode broadcast message
  relay         - Relay masternode broadcast message to the network
```
