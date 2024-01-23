#!/bin/bash

docker build -t merge-ut-dictionaries ./
docker create -it --rm --name dict-build merge-ut-dictionaries
docker start dict-build

# Build the dictionary
docker exec dict-build ./scripts/download-dependencies.sh
docker exec dict-build ./scripts/patch-make-sh.sh
docker exec dict-build ./scripts/build-dict.sh

# Copy built assets
mkdir -p ./dist/
docker cp dict-build:/home/debian/merge-ut-dictionaries/src/mozcdic-ut.txt ./dist/

docker stop dict-build
