## **`getchaintips`**

**`getchaintips ( count branchlen )`**
Return information about all known tips in the block tree, including the main chain as well as orphaned branches.

***Arguments:***

```
1. count       (numeric, optional) only show this much of latest tips
2. branchlen   (numeric, optional) only show tips that have equal or greater length of branch

```



***Result:***

```
[
  {
    "height": xxxx,             (numeric) height of the chain tip
    "hash": "xxxx",             (string) block hash of the tip
    "difficulty" : x.xxx,       (numeric) The difficulty
    "chainwork" : "0000...1f3"  (string) Expected number of hashes required to produce the current chain (in hex)
    "branchlen": 0              (numeric) zero for main chain
    "forkpoint": "xxxx",        (string) same as "hash" for the main chain
    "status": "active"          (string) "active" for the main chain
  },
  {
    "height": xxxx,
    "hash": "xxxx",
    "difficulty" : x.xxx,
    "chainwork" : "0000...1f3"
    "branchlen": 1              (numeric) length of branch connecting the tip to the main chain
    "forkpoint": "xxxx",        (string) block hash of the last common block between this tip and the main chain
    "status": "xxxx"            (string) status of the chain (active, valid-fork, valid-headers, headers-only, invalid)
  }
]
Possible values for status:
1.  "invalid"               This branch contains at least one invalid block
2.  "headers-only"          Not all blocks for this branch are available, but the headers are valid
3.  "valid-headers"         All blocks are available for this branch, but they were never fully validated
4.  "valid-fork"            This branch is not part of the active chain, but is fully validated
5.  "active"                This is the tip of the active main chain, which is certainly valid

```



***Examples:***

```
> syscoin-cli getchaintips 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getchaintips", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:18370/
```
