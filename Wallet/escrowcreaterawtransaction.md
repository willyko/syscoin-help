## **`escrowcreaterawtransaction`**

**`escrowcreaterawtransaction [type] [escrow guid] [{"txid":"id","vout":n, "satoshis":n},...] [user role]`**
Creates raw transaction for escrow refund or release, sign the output raw transaction and pass it via the rawtx parameter to escrowrelease. Type is 'refund' or 'release'. Third parameter is array of input (txid, vout, amount) pairs to be used to fund escrow payment. User role represents either 'seller', 'buyer' or 'arbiter', represents who signed for the payment of the escrow. 'seller' or 'arbiter' is valid for type 'refund' (if you are the buyer during refund leave this empty), while 'buyer' or 'arbiter' is valid for type 'release' (if you are the seller during release leave this empty). You only need to provide this parameter when calling escrowrelease or escrowrefund. 

Requires wallet passphrase to be set with walletpassphrase call.
