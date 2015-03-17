# Prerequisties

    - The bitcoind must be running and have finished downloading the blockchain


# Build docker image based on wow73611/bitcoind

    docker build -t wow73611/insight --no-cache .


# Running bitcoind and use API

#docker run -it --name insight --link bitcoind:bitcoind -p 3001:3000 -v $(pwd)/insight:/root/.insight wow73611/insight bash


# Running bitcoind on daemon

#docker run -d --name insight --link bitcoind:bitcoind -v $(pwd)/insight:/root/.insight wow73611/insight

docker run -d -p 8332:8332 -p 8333:8333 -p 3001:3000 \
 -v $(pwd)/bitcoin:/root/.bitcoin -v $(pwd)/insight:/root/.insight wow73611/insight


