# teku-docker

## How to
### Run a Teku node without a validator

1. Make a `.env` file
   ```bash
   cp .env.example .env
   ```
1. Comment out `START_VALIDATOR=true` in the `.env` file.
1. Start the containers:
   ```bash
   bash start.sh
   ```

### Run a Teku validator

1. Make a `.env` file
   ```bash
   cp .env.example .env
   ```
1. Move your keystore files generated with [eth2.0-deposit-cli](https://github.com/ethereum/eth2.0-deposit-cli) to the `keys/` directory.
1. Save the password you selected in [eth2.0-deposit-cli](https://github.com/ethereum/eth2.0-deposit-cli) to `keys/launchpad_validators.pass`
1. In the `.env` file, add the names of all keystore files as a comma separated list under the `KEY_FILES` variable.
1. In the `.env` file, make `PASSWD_FILES` a comma separated list with the path `/keys/launchpad_validators.pass` listed as many times as there are validators.
1. Start the containers:
   ```bash
   bash start.sh
   ```
