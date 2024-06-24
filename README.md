# Pokemon Token Smart Contract

## Overview
This smart contract is my submission for the Metacrafters ETH Proof: Beginner EVM Course. The contract implements a basic token system with minting and burning functionalities. It includes public variables to store token details, a mapping to track balances, events for logging actions, and functions to mint and burn tokens, as well as to check user balances.
## Description

The smart contract, PokemonToken, consists of the following features:

### 1 Public Variables:

* Tname: Stores the name of the token, which is set to "Pokemon".
* TAbb: Stores the abbreviation of the token, which is set to "Pkm".
* Supply: Stores the total supply of tokens.
### 2 Mapping:

balances: Maps addresses to their respective token balances.
### 3 Functions:

Mint: Logs the minting of tokens.
Burn: Logs the burning of tokens.

mint(address _add, uint256 _val): Increases the total supply of tokens and the balance of the specified address by the given amount. Emits a Mint event.
burn(address _add, uint256 _val): Decreases the total supply of tokens and the balance of the specified address by the given amount, provided the address has enough tokens to burn. Emits a Burn event.
## Code Explanation

### Variables
Token Name (Tname): This variable stores the name of the token, which is set to "Pokemon".

Token Abbreviation (TAbb): This variable stores the abbreviation of the token, which is set to "Pkm".

Total Supply (Supply): This variable tracks the total supply of the tokens. Initially, it is set to 0.
### Mapping
Balances (balance): This mapping associates each address with its corresponding token balance. The key is an address, and the value is the balance of tokens that address holds.
### Functions
Mint Function (mint): This function increases the total supply of tokens by the specified amount and credits the same amount to the balance of the given address. It also emits a Mint event.

Burn Function (burn): This function decreases the total supply of tokens by the specified amount and deducts the same amount from the balance of the given address. The function checks if the address has enough tokens before proceeding with the burn. It also emits a Burn event.
## Authors

Harsh Kumar
(www.linkedin.com/in/harsh-kumar-91059b231)

## Platform
This contract can be tested and ran on Remix IDE.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
