# ERC20-Token-Manager

## truffle setup
 
```
npm init
npm install -g truffle
truffle init 
```

## network setup
### Local - ganache

```
//truffle-config.js
...
...
 
networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*"
    }
  },
 
...
...

```

Solidity 0.8.20 introduces the PUSH0 (0x5f) opcode, which is only supported on the ETH mainnet and not on other chains.

If you plan to deploy to a chain other than the mainnet, such as an L2 chain that does not yet support PUSH0, you must select the appropriate EVM version. Otherwise deployment fails.
https://soliditylang.org/blog/2023/05/10/solidity-0.8.20-release-announcement/

```
...
...
 
compilers: {
    solcs: {
      version: "0.8.0",
    }
  },
 
...
...

```


### Testnet - Sepolia

```
//install hdwallet-provider
npm install @truffle/hdwallet-provider
npm install truffle-flatten

```

```
//install dotnev
npm install dotenv

```


```
//create .env file
INFURA_API_KEY = "https://ropsten.infura.io/v3/<Your-API-Key>"
MNEMONIC = "<Your-MetaMask-Secret-Recovery-Phrase>"

```


```
//truffle-config.js

require('dotenv').config();
const HDWalletProvider = require('@truffle/hdwallet-provider');
const { INFURA_API_KEY, MNEMONIC } = process.env

...
...
 
networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*"
    },
    sepolia: {
      provider: () => new HDWalletProvider(MNEMONIC, INFURA_API_KEY),
      network_id: "11155111",
      gas: 4465030,
      gasPrice: 100000000000
    }
  },
 
...
...

```
 
 
npm install @openzeppelin/contracts@4.9.3  //이걸로 버전 지정해줌
