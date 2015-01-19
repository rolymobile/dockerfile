# Usage #
```sh
docker run --rm rolymobile/bitcore <command>
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

## Command ##
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

######Example:  
3 of 4  
need 3 private key, 1 public key  
1 of 4  
need 1 private key, 3 public key
