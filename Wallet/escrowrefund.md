## **`escrowrefund`**

**`escrowrefund [escrow guid] [user role] [rawtx] [witness]`**
Refunds escrow funds to buyer. User role represents either 'seller' or 'arbiter'. Third parameter (rawtx) is the signed response from escrowcreaterawtransaction. You must sign this transaction externally prior to passing in.

Requires wallet passphrase to be set with walletpassphrase call.
