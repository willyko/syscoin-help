## **`offernew`**

**`offernew [alias] [category] [title] [quantity] [price] [description] [currency] [cert. guid] [payment options=SYS] [private=false] [units=1] [offertype=BUYNOW] [auction_expires=0] [auction_reserve=0] [auction_require_witness=false] [auction_deposit=0] [witness]`**
<alias> An alias you own.
<category> category, 256 characters max.
<title> title, 256 characters max.
<quantity> quantity, > 0 or -1 for infinite
<price> price in <currency>
<description> description, 512 characters max.
<currency> The currency code that you want your offer to be in ie: USD.
<cert. guid> Set this to the guid of a certificate you wish to sell
<paymentOptions> 'SYS' to accept SYS only, 'BTC' for BTC only, 'ZEC' for zcash only, or a |-delimited string to accept multiple currencies (e.g. 'BTC|SYS' to accept BTC or SYS). Leave empty for default. Defaults to 'SYS'.
<private> set to Yes if this offer should be private not be searchable. Defaults to No.
<units> Units that 1 qty represents. For example if selling 1 BTC. Default is 1.
<offertype> Options of how an offer is sold. 'BUYNOW' for regular Buy It Now offer, 'AUCTION' to auction this offer while providing auction_expires/auction_reserve/auction_require_witness parameters, 'COIN' for offers selling cryptocurrency, or a | -delimited string to create an offer with multiple options(e.g. 'BUYNOW|AUCTION' to create an offer that is sold through an auction but has Buy It Now enabled as well).Leave empty for default. Defaults to 'BUYNOW'.
<auction_expires> If offerType is AUCTION, Datetime of expiration of an auction. Once merchant creates an offer as an auction, the expiry must be non-zero. The auction parameters will not be updateable until an auction expires.
<auction_reserve> If offerType is AUCTION, Reserve price of an offer publicly. Bids must be of higher price than the reserve price. Any bid below the reserve price will be rejected by consensus checks in escrow. Default is 0.
<auction_require_witness> If offerType is AUCTION, Require a witness signature for bids of an offer, or release/refund of an escrow funds in an auction for the offer. Set to true if you wish to require witness signature. Default is false.
<auction_deposit> If offerType is AUCTION. If you require a deposit for each bidder to ensure stake to bidders set this to a percentage of the offer price required to place deposit when doing an initial bid. For Example: 1% of the offer price would be 0.01. Default is 0.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.
