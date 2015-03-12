#!/bin/bash

IMAGE_TAG='rolymobile/roly-bitcore'
OPTIONS='--no-cache'

docker build -t $IMAGE_TAG $OPTIONs .
