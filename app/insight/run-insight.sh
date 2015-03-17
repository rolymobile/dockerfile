#!/bin/bash

# waitting for bitcoind ready and verify blockchain
sleep 30

INSIGHT_PUBLIC_PATH=public INSIGHT_NETWORK=livenet BITCOIND_USER=bitcoinrpc BITCOIND_PASS=55ZPQA63NaDVzBAQRBmPGdMwqway5mQXrFnugChyGSe7 npm start
