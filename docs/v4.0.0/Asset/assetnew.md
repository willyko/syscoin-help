## **`assetnew`**

**`assetnew [address] [public value] [contract] [burn_method_signature] [precision=8] [supply] [max_supply] [update_flags] [witness]`**
<address> An address that you own.
<public value> public data, 256 characters max.
<contract> Ethereum token contract for SyscoinX bridge. Must be in hex and not include the '0x' format tag. For example contract '0xb060ddb93707d2bc2f8bcc39451a5a28852f8d1d' should be set as 'b060ddb93707d2bc2f8bcc39451a5a28852f8d1d'. Leave empty for no smart contract bridge.
<burn_method_signature> Ethereum token contract method signature for the burn function.  Use an ABI tool in Ethereum to find this, it mst be set so that the validation code knows the burn function was called to mint assets in Syscoin from Ethereum. Must be in hex and is 4 bytes (8 characters). ie: 'fefefefe'. Leave empty for no smart contract bridge.
<precision> Precision of balances. Must be between 0 and 8. The lower it is the higher possible max_supply is available since the supply is represented as a 64 bit integer. With a precision of 8 the max supply is 10 billion.
<supply> Initial supply of asset. Can mint more supply up to total_supply amount or if total_supply is -1 then minting is uncapped.
<max_supply> Maximum supply of this asset. Set to -1 for uncapped. Depends on the precision value that is set, the lower the precision the higher max_supply can be.
<update_flags> Ability to update certain fields. Must be decimal value which is a bitmask for certain rights to update. The bitmask represents 0x01(1) to give admin status (needed to update flags), 0x10(2) for updating public data field, 0x100(4) for updating the smart contract/burn method signature fields, 0x1000(8) for updating supply, 0x10000(16) for being able to update flags (need admin access to update flags as well). 0x11111(31) for all.
<witness> Witness address that will sign for web-of-trust notarization of this transaction.
