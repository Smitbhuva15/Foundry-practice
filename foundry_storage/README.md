# Foundry Simple Storage


## Usage

1. Setup your `anvil` chain by running the following in your terminal:

```bash
anvil
```

You'll get a large output where the ending looks something like:

```
==================

31337

Base Fee
==================

1000000000

Gas Limit
==================

30000000

Genesis Timestamp
==================

1717267365

Listening on 127.0.0.1:8545
```

2. Copy the number at the end of `Listening on XXX` and place it into your `.env` file similar to what's in `.env.example`, and add an `http://` to it.

`.env` Example:

```
RPC_URL=http://127.0.0.1:8545
```

3. Scroll up in the anvil output, and you'll see a section that looks like this:

```
Private Keys
==================

(0) 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
(1) 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d
(2) 0x5de4111afa1a4b94908f83103eb1f1706367c2e68ca870fc3fb9a804cdab365a
(3) 0x7c852118294e51e653712a81e05800f419141751be58f605c371e15141b007a6
(4) 0x47e179ec197488593b187f80a00eb0da91f1b9d0b13f8733639f19c30a34926a
(5) 0x8b3a350cf5c34c9194ca85829a2df0ec3153be0318b5e2d3348e872092edffba
(6) 0x92db14e403b83dfe3df233f83dfa3a0d7096f21ca9b0d6d6b8d88b2b4ec1564e
(7) 0x4bbbf85ce3377467afe5d46f804f221813b2bb87f24d81f60f1fcdbf7cbf4356
(8) 0xdbda1821b80551c9d65939329250298aa3472ba22feea921c0cf5d620ea67b97
(9) 0x2a871d0798f97d79848a013d4936a73bf4cc922c825d33c1cf7073dff6d409c6

Wallet
==================
Mnemonic:          test test test test test test test test test test test junk
Derivation path:   m/44'/60'/0'/0/
```

Grab the top key and place it into your `.env`. 

`.env` Example:

PRIVATE_KEY=11ee3108a03081fe260ecdc106554d09d9d1209bcafd46942b10e02943effc4a

4. Compile your code

Run

```
forge compile
```

5. Deploy your contract

```
forge create SimpleStorage --rpc-url <RPC-URL> --private-key <PRIVATE_KEY> --broadcast
```

## Deploying to a testnet

Make sure you have a [metamask](https://metamask.io/) or other wallet, and export the private key.


### ***Run***

```bash
forge create SimpleStorage --private-key <PRIVATE_KEY> --rpc-url <ALCHEMY_URL>
```

Or, you can use a deploy script!

```bash
forge script script/DeploySimpleStorage.s.sol --private-key <PRIVATE_KEY> --rpc-url <ALCHEMY_URL>
```