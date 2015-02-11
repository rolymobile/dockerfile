# Usage #
## CLI ##
```sh
docker run --rm rolymobile/bitcore <command>
```
## http daemon ##
```sh
docker run -d -p 9090:1337 rolymobile/bitcore daemon
```
## Response Format##
**success**  
```json
{
    "success":true,
    "data":"XXX"
}
```
**fail**
```json
{
    "success":false,
    "data":null,
    "reason":"XXX"
}
```

## CLI Command ##
#### Create Private Key ####
`-t` for testnet
```sh
docker run --rm rolymobile/bitcore create_privatekey [-t]
```

**response**  
`data` - private key

#### Generate Public Key ####
```sh
docker run --rm rolymobile/bitcore to_publickey <privateKey>
```
**response**  
`data` - public key

#### Generate Address ####
`-t` for testnet
```sh
docker run --rm rolymobile/bitcore to_address [-t] <privateKey>
```
***response:***  
`data` - address

#### Generate Multisig Address ####
`-t` for testnet
```sh
docker run --rm rolymobile/bitcore to_multisign_address  [-t] <private keys...> <threshold>
```
***response:***  
`data` - address

#### Transaction ####
**Single sign**
```sh
docker run --rm rolymobile/bitcore transaction <fromAddress> <privateKey> <toAddress> <amount>
```
`<fromAddress>` - source address  
`<privateKeys>` - private key  
`<toAddress>` - destination address  
`<amount>` - BTC amount

***response:***  
`data` - txid

**Multi sign**
```sh
docker run --rm rolymobile/bitcore transaction <fromAddress> <privateKeys> <publicKeys> <toAddress> <amount>
```
`<fromAddress>` - source address  
`<privateKeys>` - private key separated by comma  
`<publicKeys>` -  public key separated by comma  
`<toAddress>` - destination address  
`<amount>` - BTC amount  

***response:***  
`data` - txid



```sh
docker run --rm rolymobile/bitcore -d
```



######Example:  
3 of 4  
need 3 private key, 1 public key  
1 of 4  
need 1 private key, 3 public key



## HTTP GET ##
same with CLI command, format like below
    http://url/aa:9090/?request=["command", "arg1", "arg2",...]