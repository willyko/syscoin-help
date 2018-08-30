## **`escrowcompleterelease`**

**`escrowcompleterelease [escrow guid] [rawtx] [witness]`**
Completes an escrow release by creating the escrow complete release transaction on syscoin blockchain.
<rawtx> Raw fully signed syscoin escrow transaction. It is the signed response from escrowcreaterawtransaction. You must sign this transaction externally prior to passing in.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.
