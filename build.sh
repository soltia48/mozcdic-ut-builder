#!/bin/bash

set -e

cd "$(dirname "$0")"

mkdir -p ./dist/
docker build -t mozcdic-ut ./ -o ./dist/
