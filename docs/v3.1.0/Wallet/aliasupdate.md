## **`aliasupdate`**

**`aliasupdate [aliasname] [public value] [address] [accept_transfers_flags=3] [expire_timestamp] [encryption_privatekey] [encryption_publickey] [witness]`**
Update and possibly transfer an alias.
<aliasname> alias name.
<public_value> alias public profile data, 256 characters max.
<address> Address of alias.
<accept_transfers_flags> 0 for none, 1 for accepting certificate transfers, 2 for accepting asset transfers and 3 for all. Default is 3.
<expire_timestamp> Unix epoch time in seconds for when to expire the alias. It is exponentially more expensive per year, calculation is FEERATE*(2.88^years). FEERATE is the dynamic based on the size of the transaction and what the minimum fee rate is currently which depends on how congested the network is. Set to 0 if not changing expiration, if non-empty a fee will be applied for changing the expiry time.
<encryption_privatekey> Encrypted private key used for encryption/decryption of private data related to this alias. If transferring, the key should be encrypted to alias_pubkey.
<encryption_publickey> Public key used for encryption/decryption of private data related to this alias. Useful if you are changing pub/priv keypair for encryption on this alias.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.
