#!/bin/sh
#
# Starts a local ETH1 node.
if [ "$START_ETH1" != "" ]; then
	exec geth \
		--goerli \
		--http --http.addr "0.0.0.0" --http.vhosts=* --http.api "eth" \
		--ipcdisable \
		--nousb
fi
