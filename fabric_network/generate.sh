#!/bin/sh

FABRIC_CFG_PATH=$(pwd)
CHANNEL_NAME=mychannel

../bin/cryptogen generate --config=./crypto-config.yaml
../bin/configtxgen -profile TwoOrgsOrdererGenesis -channelID byfn-sys-channel -outputBlock ./config/genesis.block
../bin/configtxgen -profile TwoOrgsChannel -outputCreateChannelTx ./config/channel.tx -channelID $CHANNEL_NAME

