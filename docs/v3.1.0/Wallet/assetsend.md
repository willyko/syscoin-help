## **`assetsend`**

**`assetsend [asset] [tmp] ([{"ownerto":"aliasname or address","amount":amount},...]  or [{"ownerto":"aliasname or address","ranges":[{"start":index,"end":index},...]},...]) [memo] [witness]`**
Send an asset you own to another address/address as an asset allocation. Maximimum recipients is 250.
<asset> Asset guid.
<owner> Alias or address that owns this asset allocation.
<ownerto> Alias or address to transfer to.
<amount> Quantity of asset to send.
<ranges> Ranges of inputs to send in integers specified in the start and end fields.
<memo> Message to include in this asset allocation transfer.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction. Only applicable asset is owned by an alias.
The third parameter can be either an array of address and amounts if sending amount pairs or an array of address and array of start/end pairs of indexes for input ranges.
