## **`certtransfer`**

**`certtransfer [guid] [alias] [public value] [accessflags=2] [witness]`**
Transfer a certificate you own to another alias.
<guid> certificate guidkey.
<alias> alias to transfer to.
<public value> public data, 256 characters max.
<accessflags> Set new access flags for new owner for this certificate, 0 for read-only, 1 for edit, 2 for edit and transfer access. Default is 2.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
