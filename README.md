# Foundry Development Guide

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

## SSH Key
```
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAPny8D3JAEBoYE7wLwSPBdspirSQUgMskMNyc3dgpe6 rayhanalmim1@gmail.com
```

## Foundry Commands

### Running the Network
```
forge
forge compile
anvil
forge --help
```

### Deployment
```
forge create --help
forge create SimpleStorage (default)
```

### Interacting with the Custom Chain
```
forge create SimpleStorage --rpc-url http://127.0.0.1:8545 --interactive
forge create SimpleStorage --rpc-url http://127.0.0.1:8545 --interactive --broadcast
```

### Clear History
```
history -c
```

### Onchain Deployment Script
```
forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545/ --broadcast --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
```
For production, use:
```
--interactive
```

### Hex to Decimal Conversion
```
cast --to-base 0x714c2 dec
cast --help
```

### Encrypt `.env` File
```
cast wallet import defaultkey --interactive
```
Or check stored keys:
```
cast wallet list
```

### Deploy Using Encrypted File
```
forge script script/DeploySimpleStorage.s.sol --rpc-url $RPC_URL --account defaultkey \
  --sender 0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266 --broadcast -vvvv
```

### Call a Function Using Cast
```
cast send 0xcf7ed3acca5a467e9e704c703e8d87f634fb0fc9 "store(uint256)" 123 --rpc-url $RPC_URL --private-key $PRIVATE_KEY
```

### Get a Function Output
```
cast call 0xcf7ed3acca5a467e9e704c703e8d87f634fb0fc9 "retrieve()"
```

### Format Code
```
forge fmt
```
### foundryup
```
foundryup
```
### zksync
```
foundryup-zksync
```

