## **`debug`**

**`debug ( 0|1|addrman|alert|bench|coindb|db|lock|rand|rpc|selectcoins|mempool|mempoolrej|net|proxy|prune|http|libevent|tor|zmq|syscoin|privatesend|instantsend|masternode|spork|keepass|mnpayments|gobject )`**
Change debug category on the fly. Specify single category or use '+' to specify many.



***Examples:***
```
> syscoin-cli debug syscoin
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "debug", "params": [syscoin+net] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
