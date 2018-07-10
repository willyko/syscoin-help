## **`aliasupdatewhitelist`**

**`aliasupdatewhitelist [owner alias] [{"alias":"aliasname","discount_percentage":n},...] [witness]`**
Update to the whitelist(controls who can resell). Array of whitelist entries in parameter 1.
To add to list, include a new alias/discount percentage that does not exist in the whitelist.
To update entry, change the discount percentage of an existing whitelist entry.
To remove whitelist entry, pass the whilelist entry without changing discount percentage.
<owner alias> owner alias controlling this whitelist.
	"entries"       (string) A json array of whitelist entries to add/remove/update
    [
      "alias"     (string) Alias that you want to add to the affiliate whitelist. Can be '*' to represent that the offers owned by owner alias can be resold by anybody.
	   "discount_percentage"     (number) A discount percentage associated with this alias. The reseller can sell your offer at this discount, not accounting for any commissions he/she may set in his own reselling offer. 0 to 99.
      ,...
    ]
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
