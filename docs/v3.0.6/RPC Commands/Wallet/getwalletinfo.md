## **`getwalletinfo`**

**`getwalletinfo`**
Returns an object containing various wallet state info.



***Result:***
```
{
  "walletversion": xxxxx,     (numeric) the wallet version
  "balance": xxxxxxx,         (numeric) the total confirmed balance of the wallet in SYS
  "privatesend_balance": xxxxxx, (numeric) the anonymized syscoin balance of the wallet in SYS
  "unconfirmed_balance": xxx, (numeric) the total unconfirmed balance of the wallet in SYS
  "immature_balance": xxxxxx, (numeric) the total immature balance of the wallet in SYS
  "txcount": xxxxxxx,         (numeric) the total number of transactions in the wallet
  "keypoololdest": xxxxxx,    (numeric) the timestamp (seconds since Unix epoch) of the oldest pre-generated key in the key pool
  "keypoolsize": xxxx,        (numeric) how many new keys are pre-generated (only counts external keys)
  "keypoolsize_hd_internal": xxxx, (numeric) how many new keys are pre-generated for internal use (used for change outputs, only appears if the wallet is using this feature, otherwise external keys are used)
  "keys_left": xxxx,          (numeric) how many new keys are left since last automatic backup
  "unlocked_until": ttt,      (numeric) the timestamp in seconds since epoch (midnight Jan 1 1970 GMT) that the wallet is unlocked for transfers, or 0 if the wallet is locked
  "paytxfee": x.xxxx,         (numeric) the transaction fee configuration, set in SYS/kB
  "hdchainid": "<hash>",      (string) the ID of the HD chain
  "hdaccountcount": xxx,      (numeric) how many accounts of the HD chain are in this wallet
    [
      {
      "hdaccountindex": xxx,         (numeric) the index of the account
      "hdexternalkeyindex": xxxx,    (numeric) current external childkey index
      "hdinternalkeyindex": xxxx,    (numeric) current internal childkey index
      }
      ,...
    ]
}

```

***Examples:***
```
> syscoin-cli getwalletinfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getwalletinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
