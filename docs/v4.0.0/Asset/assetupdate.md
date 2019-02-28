## **`assetupdate`**

**`assetupdate [asset] [public value] [contract] [burn_method_signature] [supply] [update_flags] [witness]`**
Perform an update on an asset you control.
<asset> Asset guid.
<public value> Public data, 256 characters max.
<contract> Ethereum token contract for SyscoinX bridge. Must be in hex and not include the '0x' format tag. For example contract '0xb060ddb93707d2bc2f8bcc39451a5a28852f8d1d' should be set as 'b060ddb93707d2bc2f8bcc39451a5a28852f8d1d'. Leave empty for no smart contract bridge.
<burn_method_signature> Ethereum token contract method signature for the burn function.  Use an ABI tool in Ethereum to find this, it mst be set so that the validation code knows the burn function was called to mint assets in Syscoin from Ethereum. Must be in hex and is 4 bytes (8 characters). ie: 'fefefefe'. Leave empty for no smart contract bridge.
<supply> New supply of asset. Can mint more supply up to total_supply amount or if max_supply is -1 then minting is uncapped. If greator than zero, minting is assumed otherwise set to 0 to not mint any additional tokens.
<update_flags> Ability to update certain fields. Must be decimal value which is a bitmask for certain rights to update. The bitmask represents 0x01(1) to give admin status (needed to update flags), 0x10(2) for updating public data field, 0x100(4) for updating the smart contract/burn method signature fields, 0x1000(8) for updating supply, 0x10000(16) for being able to update flags (need admin access to update flags as well). 0x11111(31) for all.
<witness> Witness address that will sign for web-of-trust notarization of this transaction.
