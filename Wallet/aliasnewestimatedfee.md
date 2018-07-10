## **`aliasnewestimatedfee`**

**`aliasnewestimatedfee [aliasname] [public value] [accept_transfers_flags=3] [expire_timestamp] [address] [encryption_privatekey] [encryption_publickey] [witness]`**
Estimate the fee for a new alias.
<aliasname> alias name.
<public value> alias public profile data, 256 characters max.
<accept_transfers_flags> 0 for none, 1 for accepting certificate transfers, 2 for accepting asset transfers and 3 for all. Default is 3.
<expire_timestamp> Epoch time when to expire alias. It is exponentially more expensive per year, calculation is FEERATE*(2.88^years). FEERATE is the dynamic based on the size of the transaction and what the minimum fee rate is currently which depends on how congested the network is. Defaults to 1 hour.
<address> Address for this alias.
<encryption_privatekey> Encrypted private key used for encryption/decryption of private data related to this alias. Should be encrypted to publickey.
<encryption_publickey> Public key used for encryption/decryption of private data related to this alias.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
