#!/bin/bash

IMAGE_TAG='rolymobile/roly-bitcore'

docker run -d -p 3000:3000 $IMAGE_TAG

