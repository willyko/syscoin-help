## **`walletpassphrase`**

**`walletpassphrase "passphrase" timeout ( mixingonly )`**

Stores the wallet decryption key in memory for 'timeout' seconds.
This is needed prior to performing transactions related to private keys such as sending syscoins

***Arguments:***
```
1. "passphrase"        (string, required) The wallet passphrase
2. timeout             (numeric, required) The time to keep the decryption key in seconds.
3. mixingonly          (boolean, optional, default=false) If is true sending functions are disabled.

Note:
Issuing the walletpassphrase command while the wallet is already unlocked will set a new unlock
time that overrides the old one.

```

***Examples:***
```

Unlock the wallet for 60 seconds
> syscoin-cli walletpassphrase "my pass phrase" 60

Unlock the wallet for 60 seconds but allow PrivateSend mixing only
> syscoin-cli walletpassphrase "my pass phrase" 60 true

Lock the wallet again (before 60 seconds)
> syscoin-cli walletlock 

As json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "walletpassphrase", "params": ["my pass phrase", 60] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
