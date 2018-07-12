## **`escrownew`**

**`escrownew [getamountandaddress] [alias] [arbiter alias] [offer] [quantity] [buynow] [price_per_unit_in_payment_option] [shipping_amount] [network_fee] [arbiter_fee] [witness_fee] [extTx] [payment_option] [bid_in_payment_option] [bid_in_offer_currency] [witness]`**
<getamountandaddress> True or false. Get deposit and total escrow amount aswell as escrow address for funding. If buynow is false pass bid amount in bid_in_payment_option to get total needed to complete escrow. If buynow is true amount is calculated based on offer price and quantity.
<alias> An alias you own.
<arbiter alias> Alias of Arbiter.
<offer> GUID of offer that this escrow is managing.
<quantity> Quantity of items to buy of offer.
<buynow> Specify whether the escrow involves purchasing offer for the full offer price if set to true, or through a bidding auction if set to false. If buynow is false, an initial deposit may be used to secure a bid if required by the seller.
<price_per_unit_in_payment_option> Total amount of the offer price. Amount is in paymentOption currency. It is per unit of purchase. 
<shipping amount> Amount to add to shipping for merchant. Amount is in paymentOption currency. Example: If merchant requests 0.1 BTC for shipping and escrow is paid in BTC, enter 0.1 here. Default is 0. Buyer can also add shipping using escrowaddshipping upon merchant request.
<network fee> Network fee in satoshi per byte for the transaction. Generally the escrow transaction is about 400 bytes. Default is 25 for SYS or ZEC and 250 for BTC payments.
<arbiter fee> Arbiter fee in fractional amount of the amount_in_payment_option value. For example 0.75% is 0.0075 and represents 0.0075*amount_in_payment_option satoshis paid to arbiter in the event arbiter is used to resolve a dispute. Default and minimum is 0.005.
<witness fee> Witness fee in fractional amount of the amount_in_payment_option value. For example 0.3% is 0.003 and represents 0.003*amount_in_payment_option satoshis paid to witness in the event witness signs off on an escrow through any of the following calls escrownew/escrowbid/escrowrelease/escrowrefund. Default is 0.
<extTx> External transaction ID if paid with another blockchain.
<paymentOption> If extTx is defined, specify a valid payment option used to make payment. Default is SYS.
<bid_in_payment_option> Initial bid amount you are willing to pay escrow for this offer. Amount is in paymentOption currency. It is per unit of purchase. If buynow is set to true, this value is disregarded.
<bid_in_offer_currency> Converted value of bid_in_payment_option from paymentOption currency to offer currency. For example: offer is priced in USD and purchased in BTC, this field will be the BTC/USD value. If buynow is set to true, this value is disregarded.
<witness> Witness alias name that will sign for web-of-trust notarization of this transaction.

Requires wallet passphrase to be set with walletpassphrase call.
