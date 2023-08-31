# Custom ERC-20 Token Contract - MODULE 3

UmeshToken is a custom ERC-20 token contract built using Solidity. It allows users to create and manage their own tokens on the Ethereum blockchain. This is ETH+AVAX Module 3 assignment of Metacrafters Course.

## Table of Contents

- [Overview](#overview)
- [Getting Started](#getting-started)
  - [Deployment](#deployment)
- [Functions](#functions)
  - [transfer](#sendtoken)
  - [burn](#destroytoken)
  - [mint](#mint)
- [Resources](#resources)

## Overview

UmeshToken is an ERC-20 token contract that provides basic functionalities for token creation, transfer, and destruction. It allows users to create a custom token with a unique name, symbol, and initial supply.

## Getting Started

### Deployment

To deploy the UmeshToken contract on the Ethereum blockchain, follow these steps using Remix and the Hardhat test network:

1. Open Remix and connect to the Hardhat test network.
2. Select the `UniqueToken` contract from the Solidity Compiler tab.
3. In the input fields, provide the following values:
   - `_tokenName`: UmeshToken
   - `_tokenSymbol`: INR
   - `_initialTokenSupply`: 0
4. Click the Deploy button.
5. Copy the deployed contract address for future interactions.

## Functions

### tranfer

Transfers tokens from the sender's address to the receiver's address.

```solidity
function sendToken(address _receiver, uint256 _amount) external
```

### burn

Destroys tokens from the sender's address and decreases the total supply.

```solidity
function destroyToken(uint256 _amount) external
```

### mint

Mints new tokens and increases the total supply. Only the contract owner can call this function.

```solidity
function mint(address _receiver, uint256 _amount) external
```

## Sepolia Testnet
Sepolia Testnet Explorer - **[Click Here](https://sepolia.etherscan.io/address/0xd309b466fc3b203de129a9c72a10b8bee40b91bc)**


## Resources

- [Solidity Documentation](https://soliditylang.org/docs/)
- [Remix Ethereum IDE](https://remix.ethereum.org/)
- [Hardhat Documentation](https://hardhat.org/)
- [ERC-20 Token Standard](https://eips.ethereum.org/EIPS/eip-20)

## Owner Name

**Umesh Ola - 21BCS10670**
