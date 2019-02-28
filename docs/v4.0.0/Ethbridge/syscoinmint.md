## **`syscoinmint`**

**`syscoinmint [address] [amount] [blocknumber] [tx_hex] [txroot_hex] [txmerkleproof_hex] [txmerkleroofpath_hex] [witness]`**
<address> Mint to this address.
<amount> Amount of SYS to mint. Note that fees are applied on top. It is not inclusive of fees.
<blocknumber> Block number of the block that included the burn transaction on Ethereum.
<tx_hex> Raw transaction hex of the burn transaction on Ethereum.
<txroot_hex> The transaction merkle root that commits this transaction to the block header.
<txmerkleproof_hex> The list of parent nodes of the Merkle Patricia Tree for SPV proof.
<txmerkleroofpath_hex> The merkle path to walk through the tree to recreate the merkle root.
<witness> Witness address that will sign for web-of-trust notarization of this transaction.
