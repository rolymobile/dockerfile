

## Running from Docker Hub

    docker run -d -p 3000:3000 rolymobile/roly-bitcore


## Installation on Docker container

    docker run -it -p 3000:3000 node:0.10 bash

    git clone https://github.com/rolymobile/roly-bitcore.git app
    cd app && npm install
    npm start

    Quit Docker container:
        Ctrl+P , Ctrl+Q


## Testing on host

    curl -X POST http://127.0.0.1:3000/create

