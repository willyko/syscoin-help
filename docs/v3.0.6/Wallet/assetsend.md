## **`assetsend`**

**`assetsend [asset] [aliasfrom] ( [{"aliasto":"aliasname","amount":amount},...] or [{"aliasto":"aliasname","ranges":[{"start":index,"end":index},...]},...] ) [memo] [witness]`**
Send an asset you own to another alias as an asset allocation. Maximimum recipients is 250.
<asset> Asset guid.
<aliasfrom> Alias to transfer from.
<aliasto> Alias to transfer to.
<amount> Quantity of asset to send.
<ranges> Ranges of inputs to send in integers specified in the start and end fields.
<memo> Message to include in this asset allocation transfer.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.
The third parameter can be either an array of alias and amounts if sending amount pairs or an array of alias and array of start/end pairs of indexes for input ranges.

Requires wallet passphrase to be set with walletpassphrase call.
