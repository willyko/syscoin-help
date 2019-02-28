---
title: "Syscoin 4.0 Testnet"
excerpt: ""
---
This guide is for trying out Syscoin 4.0 on our public testnet
[block:api-header]
{
  "type": "basic",
  "title": "1. Things to Know"
}
[/block]
1. This "testnet is actually a fake mainnet so there's no need to specify `-testnet=1` in the configuration
2. There's a few executable to be aware of.  There's the standard syscoind, syscoin-cli, and syscoin-qt.  And there's geth binary and relayer binary in the repo as well.  Starting syscoind with default argument will also start the geth and relayer binaries.  
(TODO:  syscoind has to start from the src/ folder for it to find the geth and relayer binary)
3. Syscoin 4 is based off Bitcoin Core 0.17.  So expect some major changes to the RPC call list.
For example, there's no more `getinfo`.  Instead, it's broken down to `getwalletinfo`, `getnetworkinfo`, `getblockchaininfo`.  Also, `getnewaddress` produces a new format known as Bech32 address. 

Before opening issues, please see Syscoin 4.0 Testnet Q/A
[block:api-header]
{
  "title": "2. Masternode Requirement"
}
[/block]
Running a masternode on syscoin 4.0 has enforced hardware requirement as below:
2+ Cores
4+ GB RAM
4+ GB swap
Linux 18.04 (Or with C++17 gcc/g++)
Port open for Syscoin (default: 8369) and Geth (default: 30303)
[block:api-header]
{
  "title": "3. Configuration File"
}
[/block]

[block:code]
{
  "codes": [
    {
      "code": "rpcuser=username\nrpcpassword=password\nrpcport=8370\naddnode=54.203.169.179\naddnode=54.190.239.153\ngethtestnet=1",
      "language": "text",
      "name": "syscoin.conf"
    }
  ]
}
[/block]

[block:api-header]
{
  "title": "4. Building"
}
[/block]
Please refer to https://github.com/syscoin/syscoin/blob/dev-4.x/doc/build-unix.md for more detail

General Guide is as the follow:

[block:code]
{
  "codes": [
    {
      "code": "$ sudo apt-get update\n$ sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils python3 libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-test-dev libboost-thread-dev\n$ sudo apt-get install software-properties-common\n$ sudo add-apt-repository ppa:bitcoin/bitcoin\n$ sudo apt-get update\n$ sudo apt-get install libdb4.8-dev libdb4.8++-dev\n$ git clone http://www.github.com/syscoin/syscoin\n$ git checkout dev-4.x\n$ cd syscoin\n$ ./autogen.sh\n$ ./configure\n$ make\n$ cd src\n$ ./syscoind",
      "language": "text"
    }
  ]
}
[/block]

[block:api-header]
{
  "title": "5.  Launching Syscoind"
}
[/block]
Ensure you're in the src/ folder and then start up syscoind with the configuration posted above.  
There's a sequence to watch for to ensure the node is started up properly.

1.  Once started, check `syscoin-cli getblockchaininfo`.  Look for the "geth_sync_status".  The state should go form "waiting" to "syncing" to "synced".  If you're running without the `-daemon` argument, you'll see the terminal being flooded with familiar Geth logs where it's syncing.

2. Then, check `syscoin-cli mnsync status`.  The asset name should go from "MASTERNODE_SYNC_INITIAL" to "MASTERNODE_SYNC_LIST" to "MASTERNODE_SYNC_MNW" to "MASTERNODE_SYNC_GOVERNANCE" to "MASTERNODE_SYNC_FINISHED"

3. Once masternode status shows sync finished, the node will start to download blocks from other peers and you should see block height going up in `syscoin-cli getblockchaininfo`

4.  Now you're node is ready!  Do a `syscoin-cli getnewaddress <label> legacy` and head to discord's testnet channel to ask for tSYS!