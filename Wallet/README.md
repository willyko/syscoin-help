# Wallet
* [`abandontransaction`](abandontransaction.md)
> `abandontransaction "txid"`

* [`addmultisigaddress`](addmultisigaddress.md)
> `addmultisigaddress nrequired ["key",...] ( "account" )`

* [`aliasaddscript`](aliasaddscript.md)
> `aliasaddscript redeemscript`

* [`aliasbalance`](aliasbalance.md)
> `aliasbalance "alias"`

* [`aliasbalancemulti`](aliasbalancemulti.md)
> `aliasbalancemulti { "aliases" : ["aliasname1","aliasname2",...] } instantsend`

* [`aliasclearwhitelist`](aliasclearwhitelist.md)
> `aliasclearwhitelist [owner alias] [witness]`

* [`aliasinfo`](aliasinfo.md)
> `aliasinfo <aliasname>`

* [`aliasnew`](aliasnew.md)
> `aliasnew [aliasname] [public value] [accept_transfers_flags=3] [expire_timestamp] [address] [encryption_privatekey] [encryption_publickey] [witness]`

* [`aliasnewestimatedfee`](aliasnewestimatedfee.md)
> `aliasnewestimatedfee [aliasname] [public value] [accept_transfers_flags=3] [expire_timestamp] [address] [encryption_privatekey] [encryption_publickey] [witness]`

* [`aliaspay`](aliaspay.md)
> `aliaspay aliasfrom {"address":amount,...} (instantsend subtractfeefromamount)`

* [`aliasupdate`](aliasupdate.md)
> `aliasupdate [aliasname] [public value] [address] [accept_transfers_flags=3] [expire_timestamp] [encryption_privatekey] [encryption_publickey] [witness]`

* [`aliasupdateestimatedfee`](aliasupdateestimatedfee.md)
> `aliasupdateestimatedfee [aliasname] [public value] [address] [accept_transfers_flags=3] [expire_timestamp] [encryption_privatekey] [encryption_publickey] [witness]`

* [`aliasupdatewhitelist`](aliasupdatewhitelist.md)
> `aliasupdatewhitelist [owner alias] [{"alias":"aliasname","discount_percentage":n},...] [witness]`

* [`aliaswhitelist`](aliaswhitelist.md)
> `aliaswhitelist <alias>`

* [`assetallocationcollectinterest`](assetallocationcollectinterest.md)
> `assetallocationcollectinterest [asset] [alias] [witness]`

* [`assetallocationinfo`](assetallocationinfo.md)
> `assetallocationinfo <asset> <alias> <getinputs>`

* [`assetallocationsend`](assetallocationsend.md)
> `assetallocationsend [asset] [aliasfrom] ( [{"aliasto":"aliasname","amount":amount},...] or [{"aliasto":"aliasname","ranges":[{"start":index,"end":index},...]},...] ) [memo] [witness]`

* [`assetallocationsenderstatus`](assetallocationsenderstatus.md)
> `assetallocationsenderstatus <asset> <sender> <txid>`

* [`assetinfo`](assetinfo.md)
> `assetinfo <asset> <getinputs>`

* [`assetnew`](assetnew.md)
> `assetnew [symbol] [alias] [public value] [category=assets] [precision=8] [use_inputranges] [supply] [max_supply] [interest_rate] [can_adjust_interest_rate] [witness]`

* [`assetsend`](assetsend.md)
> `assetsend [asset] [aliasfrom] ( [{"aliasto":"aliasname","amount":amount},...] or [{"aliasto":"aliasname","ranges":[{"start":index,"end":index},...]},...] ) [memo] [witness]`

* [`assettransfer`](assettransfer.md)
> `assettransfer [asset] [alias] [witness]`

* [`assetupdate`](assetupdate.md)
> `assetupdate [asset] [public value] [category=assets] [supply] [interest_rate] [witness]`

* [`backupwallet`](backupwallet.md)
> `backupwallet "destination"`

* [`certinfo`](certinfo.md)
> `certinfo <guid>`

* [`certnew`](certnew.md)
> `certnew [alias] [title] [public value] [category=certificates] [witness]`

* [`certtransfer`](certtransfer.md)
> `certtransfer [guid] [alias] [public value] [accessflags=2] [witness]`

* [`certupdate`](certupdate.md)
> `certupdate [guid] [title] [public value] [category=certificates] [witness]`

* [`dumphdinfo`](dumphdinfo.md)
> `dumphdinfo`

* [`dumpprivkey`](dumpprivkey.md)
> `dumpprivkey "address"`

* [`dumpwallet`](dumpwallet.md)
> `dumpwallet "filename"`

* [`escrowacknowledge`](escrowacknowledge.md)
> `escrowacknowledge [escrow guid] [witness]`

* [`escrowbid`](escrowbid.md)
> `escrowbid [alias] [escrow] [bid_in_payment_option] [bid_in_offer_currency] [witness]`

* [`escrowcompleterefund`](escrowcompleterefund.md)
> `escrowcompleterefund [escrow guid] [rawtx] [witness]`

* [`escrowcompleterelease`](escrowcompleterelease.md)
> `escrowcompleterelease [escrow guid] [rawtx] [witness]`

* [`escrowcreaterawtransaction`](escrowcreaterawtransaction.md)
> `escrowcreaterawtransaction [type] [escrow guid] [{"txid":"id","vout":n, "satoshis":n},...] [user role]`

* [`escrowfeedback`](escrowfeedback.md)
> `escrowfeedback [escrow guid] [userfrom] [feedback] [rating] [userto] [witness]`

* [`escrowinfo`](escrowinfo.md)
> `escrowinfo <guid>`

* [`escrownew`](escrownew.md)
> `escrownew [getamountandaddress] [alias] [arbiter alias] [offer] [quantity] [buynow] [price_per_unit_in_payment_option] [shipping_amount] [network_fee] [arbiter_fee] [witness_fee] [extTx] [payment_option] [bid_in_payment_option] [bid_in_offer_currency] [witness]`

* [`escrowrefund`](escrowrefund.md)
> `escrowrefund [escrow guid] [user role] [rawtx] [witness]`

* [`escrowrelease`](escrowrelease.md)
> `escrowrelease [escrow guid] [user role] [rawtx] [witness]`

* [`getaccount`](getaccount.md)
> `getaccount "address"`

* [`getaccountaddress`](getaccountaddress.md)
> `getaccountaddress "account"`

* [`getaddressesbyaccount`](getaddressesbyaccount.md)
> `getaddressesbyaccount "account"`

* [`getbalance`](getbalance.md)
> `getbalance ( "account" minconf addlockconf include_watchonly )`

* [`getnewaddress`](getnewaddress.md)
> `getnewaddress ( "account" )`

* [`getrawchangeaddress`](getrawchangeaddress.md)
> `getrawchangeaddress`

* [`getreceivedbyaccount`](getreceivedbyaccount.md)
> `getreceivedbyaccount "account" ( minconf addlockconf )`

* [`getreceivedbyaddress`](getreceivedbyaddress.md)
> `getreceivedbyaddress "address" ( minconf addlockconf )`

* [`gettransaction`](gettransaction.md)
> `gettransaction "txid" ( include_watchonly )`

* [`getunconfirmedbalance`](getunconfirmedbalance.md)
> `getunconfirmedbalance`

* [`getwalletinfo`](getwalletinfo.md)
> `getwalletinfo`

* [`importaddress`](importaddress.md)
> `importaddress "address" ( "label" rescan p2sh )`

* [`importelectrumwallet`](importelectrumwallet.md)
> `importelectrumwallet "filename" index`

* [`importmulti`](importmulti.md)
> `importmulti "requests" "options"`

* [`importprivkey`](importprivkey.md)
> `importprivkey "syscoinprivkey" ( "label" ) ( rescan )`

* [`importprunedfunds`](importprunedfunds.md)
> `importprunedfunds`

* [`importpubkey`](importpubkey.md)
> `importpubkey "pubkey" ( "label" rescan )`

* [`importwallet`](importwallet.md)
> `importwallet "filename"`

* [`instantsendtoaddress`](instantsendtoaddress.md)
> `instantsendtoaddress "address" amount ( "comment" "comment-to" subtractfeefromamount )`

* [`keepass`](keepass.md)
> `keepass <genkey|init|setpassphrase>`

* [`keypoolrefill`](keypoolrefill.md)
> `keypoolrefill ( newsize )`

* [`listaccounts`](listaccounts.md)
> `listaccounts ( minconf addlockconf include_watchonly)`

* [`listaddressbalances`](listaddressbalances.md)
> `listaddressbalances ( minamount )`

* [`listaddressgroupings`](listaddressgroupings.md)
> `listaddressgroupings`

* [`listaliases`](listaliases.md)
> `listaliases [count] [from] [{options}]]`

* [`listassetallocations`](listassetallocations.md)
> `listassetallocations [count] [from] [{options}]`

* [`listassetallocationtransactions`](listassetallocationtransactions.md)
> `listassetallocationtransactions [count] [from] [{options}]`

* [`listassets`](listassets.md)
> `listassets [count] [from] [{options}]`

* [`listcerts`](listcerts.md)
> `listcerts [count] [from] [{options}]`

* [`listescrows`](listescrows.md)
> `listescrows [count] [from] [{options}]`

* [`listlockunspent`](listlockunspent.md)
> `listlockunspent`

* [`listoffers`](listoffers.md)
> `listoffers [count] [from] [{options}]`

* [`listreceivedbyaccount`](listreceivedbyaccount.md)
> `listreceivedbyaccount ( minconf addlockconf include_empty include_watchonly)`

* [`listreceivedbyaddress`](listreceivedbyaddress.md)
> `listreceivedbyaddress ( minconf addlockconf include_empty include_watchonly)`

* [`listsinceblock`](listsinceblock.md)
> `listsinceblock ( "blockhash" target_confirmations include_watchonly)`

* [`listtransactions`](listtransactions.md)
> `listtransactions ( "account" count skip include_watchonly)`

* [`listunspent`](listunspent.md)
> `listunspent ( minconf maxconf  ["addresses",...] [include_unsafe] )`

* [`lockunspent`](lockunspent.md)
> `lockunspent unlock ([{"txid":"txid","vout":n},...])`

* [`move`](move.md)
> `move "fromaccount" "toaccount" amount ( minconf "comment" )`

* [`offerinfo`](offerinfo.md)
> `offerinfo <guid>`

* [`offerlink`](offerlink.md)
> `offerlink [alias] [guid] [commission] [description] [witness]`

* [`offernew`](offernew.md)
> `offernew [alias] [category] [title] [quantity] [price] [description] [currency] [cert. guid] [payment options=SYS] [private=false] [units=1] [offertype=BUYNOW] [auction_expires=0] [auction_reserve=0] [auction_require_witness=false] [auction_deposit=0] [witness]`

* [`offerupdate`](offerupdate.md)
> `offerupdate [alias] [guid] [category] [title] [quantity] [price] [description] [currency] [private=false] [cert. guid] [commission] [paymentOptions] [offerType=BUYNOW] [auction_expires] [auction_reserve] [auction_require_witness] [auction_deposit] [witness]`

* [`prunesyscoinservices`](prunesyscoinservices.md)
> `prunesyscoinservices`

* [`removeprunedfunds`](removeprunedfunds.md)
> `removeprunedfunds "txid"`

* [`sendfrom`](sendfrom.md)
> `sendfrom "fromaccount" "toaddress" amount ( minconf addlockconf "comment" "comment_to" )`

* [`sendmany`](sendmany.md)
> `sendmany "fromaccount" {"address":amount,...} ( minconf addlockconf "comment" ["address",...] subtractfeefromamount use_is use_ps )`

* [`sendtoaddress`](sendtoaddress.md)
> `sendtoaddress "address" amount ( "comment" "comment_to" subtractfeefromamount use_is use_ps )`

* [`setaccount`](setaccount.md)
> `setaccount "address" "account"`

* [`settxfee`](settxfee.md)
> `settxfee amount`

* [`signmessage`](signmessage.md)
> `signmessage "address" "message"`

* [`syscoindecoderawtransaction`](syscoindecoderawtransaction.md)
> `syscoindecoderawtransaction <hexstring>`

* [`syscoinlistreceivedbyaddress`](syscoinlistreceivedbyaddress.md)
> `syscoinlistreceivedbyaddress`

* [`syscoinsendrawtransaction`](syscoinsendrawtransaction.md)
> `syscoinsendrawtransaction "hexstring" ( allowhighfees instantsend )`

* [`syscointxfund`](syscointxfund.md)
> `syscointxfund`

* [`tpstestinfo`](tpstestinfo.md)
> `tpstestinfo`

* [`walletlock`](walletlock.md)
> `walletlock`

* [`walletpassphrase`](walletpassphrase.md)
> `walletpassphrase "passphrase" timeout ( mixingonly )`

* [`walletpassphrasechange`](walletpassphrasechange.md)
> `walletpassphrasechange "oldpassphrase" "newpassphrase"`

