## **`spork`**

**`spork "command"`**

Shows information about current state of sporks

***Arguments:***
```
1. "command"                     (string, required) 'show' to show all current spork values, 'active' to show which sporks are active

```

***Result:***
```
For 'show':
{
  "SPORK_NAME" : spork_value,    (number) The value of the specific spork with the name SPORK_NAME
  ...
}
For 'active':
{
  "SPORK_NAME" : true|false,     (boolean) 'true' for time-based sporks if spork is active and 'false' otherwise
  ...
}

```

***Examples:***
```
> syscoin-cli spork show
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "spork", "params": ["show"] }' -H 'content-type: text/plain;' http://127.0.0.1:8236/
```
