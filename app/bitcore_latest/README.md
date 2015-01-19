# Usage #
```
docker run --rm rolymobile/bitcore <command>
```
## Command ##
#### Create Private Key ####
```sh
bash$ docker run --rm rolymobile/bitcore create_private_key
```
**response**
```json
{"success":true,"data":"Kzu53FTtdeKtzgaeagi7zs9cM6xE1RtxztCGZqxWzZmV1ztNtgUe"}
```

#### Create Address ####
`-t` for testnet
```sh
bash$ docker run --rm rolymobile/bitcore to_address [-t] <privateKey>
```
***response:***
```json
{"success":true,"data":"13Eo8bAZXuv5WukDAa7HqsytMUtMiie2rn"}
```

#### Create Multisig Address ####
`-t` for testnet
```sh
bash$ docker run --rm rolymobile/bitcore to_multisign_address  [-t] <private keys...> <threshold>
```
***response:***
```json
{"success":true,"data":"2NG4H5Bf7JkJ5cub76eudYR9jEWWtuPaWYw"}
```

#### Transaction ####
**Single sign**
```sh
bash$ docker run --rm rolymobile/bitcore transaction <fromAddress> <privateKey> <toAddress> <amount>
```
`<fromAddress>` - source address  
`<privateKeys>` - private key  
`<toAddress>` - destination address  
`<amount>` - BTC amount

**Multi sign**
```sh
bash$ docker run --rm rolymobile/bitcore transaction <fromAddress> <privateKeys> <publicKeys> <toAddress> <amount>
```
`<fromAddress>` - source address  
`<privateKeys>` - private key separated by comma  
`<publicKeys>` -  public key separated by comma  
`<toAddress>` - destination address  
`<amount>` - BTC amount  

######Example:  
3 of 4  
need 3 private key, 1 public key  
1 of 4  
need 1 private key, 3 public key