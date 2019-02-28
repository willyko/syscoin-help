## **`submitauxblock`**

**`submitauxblock <hash> <auxpow>`**

submit a solved auxpow for a previously block created by 'createauxblock'.

***Arguments:***

```
1. hash      (string, required) hash of the block to submit
2. auxpow    (string, required) serialised auxpow found

```



***Result:***

```
xxxxx        (boolean) whether the submitted block was correct

```



***Examples:***

```
> syscoin-cli submitauxblock "hash" "serialised auxpow"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "submitauxblock", "params": ["hash" "serialised auxpow"] }' -H 'content-type: text/plain;' http://127.0.0.1:8370/
```
