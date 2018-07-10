## **`syscoinlistreceivedbyaddress`**

**`syscoinlistreceivedbyaddress`**

List balances by receiving address.



***Result:***
```
[
  {
    "address" : "receivingaddress",    (string) The receiving address
    "amount" : x.xxx,					(numeric) The total amount in SYS received by the address
    "label" : "label"                  (string) A comment for the address/transaction, if any
    "alias" : "alias"                  (string) Associated alias to this address, if any
  }
  ,...
]

```

***Examples:***
```
> syscoin-cli syscoinlistreceivedbyaddress 
```
