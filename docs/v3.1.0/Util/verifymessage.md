## **`verifymessage`**

**`verifymessage "address" "signature" "message"`**

Verify a signed message

***Arguments:***

```
1. "address"         (string, required) The syscoin address to use for the signature.
2. "signature"       (string, required) The signature provided by the signer in base 64 encoding (see signmessage).
3. "message"         (string, required) The message that was signed.

```



***Result:***

```
true|false   (boolean) If the signature is verified or not.

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
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "verifymessage", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", "signature", "my message"] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
