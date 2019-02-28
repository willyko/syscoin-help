---
title: "Syscoin 4.0 Testnet Q/A"
excerpt: ""
---
## What executables are running when running Syscoin 4?

If syscoind is started with default configuration, you should expect to see 3 processes running in the background.  Namely syscoind, geth, and relayer

## What is relayer?

Relayer is a light-weight app that subscribes to Geth and pushes blockheaders and syncing information to Syscoin core

## Node is stuck at syncing!

First, look through your process list and ensure all 3 processes are still running.  (syscoind, geth, relayer).  If Geth or Relayer is missing, try running RPC command `syscoin-cli syscoinstartgeth`
Next, identify what is stuck at syncing.  There's a few possibilities here:
    1. Geth is not connected to peers.
    2. relayer is not signalling syscoincore properly
    3. masternode is not syncing