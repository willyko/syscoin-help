## **`certupdate`**

**`certupdate [guid] [title] [public value] [category=certificates] [witness]`**
Perform an update on an certificate you control.
<guid> Certificate guidkey.
<title> Certificate title, 256 characters max.
<public value> Public data, 256 characters max.
<category> Category, 256 characters max. Defaults to certificates
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
