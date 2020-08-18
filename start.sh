#!/usr/bin/env bash

export UID=${UID}
export DATA_DIR_TEKU=./data_teku
export DATA_DIR_ETH1=./data_eth1

# Make sure data dirs are created without root being the owner
mkdir -p ${DATA_DIR_TEKU}
mkdir -p ${DATA_DIR_ETH1}

docker-compose pull &&
docker-compose down &&
docker-compose up -d
