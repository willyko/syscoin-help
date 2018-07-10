# Rawtransactions
* [`createrawtransaction`](createrawtransaction.md)
> `createrawtransaction [{"txid":"id","vout":n},...] {"address":amount,"data":"hex",...} ( locktime )`

* [`decoderawtransaction`](decoderawtransaction.md)
> `decoderawtransaction "hexstring"`

* [`decodescript`](decodescript.md)
> `decodescript "hexstring"`

* [`fundrawtransaction`](fundrawtransaction.md)
> `fundrawtransaction "hexstring" ( options )`

* [`getrawtransaction`](getrawtransaction.md)
> `getrawtransaction "txid" ( verbose )`

* [`sendrawtransaction`](sendrawtransaction.md)
> `sendrawtransaction "hexstring" ( allowhighfees instantsend bypasslimits)`

* [`signrawtransaction`](signrawtransaction.md)
> `signrawtransaction "hexstring" ( [{"txid":"id","vout":n,"scriptPubKey":"hex","redeemScript":"hex"},...] ["privatekey1",...] sighashtype )`

