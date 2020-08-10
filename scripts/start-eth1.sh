#!/bin/sh
#
# Starts a local ETH1 node.

if [ "$START_ETH1" != "" ]; then
	exec besu \
		--network=goerli \
		--data-path=/opt/besu/data/data \
		--host-allowlist=* \
		--sync-mode=FAST \
		--rpc-http-enabled \
		--rpc-http-cors-origins=* \
		--rpc-http-api=ETH
fi
