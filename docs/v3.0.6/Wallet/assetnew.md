## **`assetnew`**

**`assetnew [symbol] [alias] [public value] [category=assets] [precision=8] [use_inputranges] [supply] [max_supply] [interest_rate] [can_adjust_interest_rate] [witness]`**
<symbol> symbol of asset in uppercase, 1 characters miniumum, 8 characters max.
<alias> An alias you own.
<public value> public data, 256 characters max.
<category> category, 256 characters max. Defaults to assets.
<precision> Precision of balances. Must be between 0 and 8. The lower it is the higher possible max_supply is available since the supply is represented as a 64 bit integer. With a precision of 8 the max supply is 10 billion.
<use_inputranges> If this asset uses an input for every token, useful if you need to keep track of a token regardless of ownership. If set to true, precision is forced to 0. Maximum supply with input ranges is 10 million.
<supply> Initial supply of asset. Can mint more supply up to total_supply amount or if total_supply is -1 then minting is uncapped.
<max_supply> Maximum supply of this asset. Set to -1 for uncapped. Depends on the precision value that is set, the lower the precision the higher max_supply can be.
<interest_rate> The annual interest rate if any. Money supply is still capped to total supply. Should be between 0 and 1 and represents a percentage divided by 100.
<can_adjust_interest_rate> Ability to adjust interest rate through assetupdate in the future.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
