## **`assetupdate`**

**`assetupdate [asset] [public value] [category=assets] [supply] [interest_rate] [witness]`**
Perform an update on an asset you control.
<asset> Asset guid.
<public value> Public data, 256 characters max.
<category> Category, 256 characters max. Defaults to assets
<supply> New supply of asset. Can mint more supply up to total_supply amount or if max_supply is -1 then minting is uncapped. If greator than zero, minting is assumed otherwise set to 0 to not mint any additional tokens.
<interest_rate> The annual interest rate if any. Money supply is still capped to total supply. Should be between 0 and 1 and represents a percentage divided by 100. Can only set if this asset allows adjustment of interest rate.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
