## **`signmessage`**

**`signmessage "address" "message"`**

Sign a message with the private key of an address
Requires wallet passphrase to be set with walletpassphrase call.

***Arguments:***
```
1. "address"         (string, required) The syscoin address to use for the private key.
2. "message"         (string, required) The message to create a signature of.

```

***Result:***
```
"signature"          (string) The signature of the message encoded in base 64

```

***Examples:***
```

Unlock the wallet for 30 seconds
> syscoin-cli walletpassphrase "mypassphrase" 30

Create the signature
> syscoin-cli signmessage "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" "my message"

Verify the signature
> syscoin-cli verifymessage "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" "signature" "my message"

As json rpc
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "signmessage", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", "my message"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
