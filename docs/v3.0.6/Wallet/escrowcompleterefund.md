## **`escrowcompleterefund`**

**`escrowcompleterefund [escrow guid] [rawtx] [witness]`**
Completes an escrow refund by creating the escrow complete refund transaction on syscoin blockchain.
<rawtx> Raw fully signed syscoin escrow transaction. It is the signed response from escrowcreaterawtransaction. You must sign this transaction externally prior to passing in.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
