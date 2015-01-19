### Create Private Key ###
    bash$ docker run --rm rolymobile/bitcore:latest create_private_key
    {"success":true,"data":"Kzu53FTtdeKtzgaeagi7zs9cM6xE1RtxztCGZqxWzZmV1ztNtgUe"}

### Create Address ###
-t for testnet

    bash$ docker run --rm rolymobile/bitcore:latest create_address [-t] Kzu53FTtdeKtzgaeagi7zs9cM6xE1RtxztCGZqxWzZmV1ztNtgUe
    {"success":true,"data":"13Eo8bAZXuv5WukDAa7HqsytMUtMiie2rn"}

### Create Multisig Address ###
-t for testnet

    bash$ docker run --rm rolymobile/bitcore:latest create_multisign_address  [-t] <private keys...> <threshold>
    {"success":true,"data":"2NG4H5Bf7JkJ5cub76eudYR9jEWWtuPaWYw"}
