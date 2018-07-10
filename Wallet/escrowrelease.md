## **`escrowrelease`**

**`escrowrelease [escrow guid] [user role] [rawtx] [witness]`**
Releases escrow funds to seller. User role represents either 'buyer' or 'arbiter'. Third parameter (rawtx) is the signed response from escrowcreaterawtransaction. You must sign this transaction externally prior to passing in.

Requires wallet passphrase to be set with walletpassphrase call.
