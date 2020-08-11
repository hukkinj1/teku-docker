#! /bin/bash
#
# Starts a beacon node.

if [ "$START_VALIDATOR" != "" ]; then
	ETH1_FLAG="--eth1-endpoint=$VOTING_ETH1_NODE"
	VALIDATOR_KEY_PARAM="--validators-key-password-files $PASSWD_FILES --validators-key-files $KEY_FILES"
	if [ "$GRAFFITI" != "" ]; then
		GRAFFITI_PARAM="--validators-graffiti=$GRAFFITI"
	fi
fi

exec /opt/teku/bin/teku \
	--network=medalla \
	--data-path=/teku_data \
	--rest-api-enabled=true \
	--rest-api-docs-enabled=true \
	$GRAFFITI_PARAM \
	$ETH1_FLAG \
	$VALIDATOR_KEY_PARAM
