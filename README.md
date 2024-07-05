# POKEMON TOKEN SMART CONTRACT

This smart contract is my submission for the Metacrafters ETH Proof: Beginner EVM Course. The contract implements a basic token system with minting and burning functionalities. It includes public variables to store token details, a mapping to track balances, events for logging actions, and functions to mint and burn tokens, as well as to check user balances.

## Description
This project focuses on creating a custom token using the Solidity programming language within the Remix IDE. Remix is a popular web-based development environment that provides a user-friendly interface for writing, compiling, and deploying smart contracts on the Ethereum blockchain.

## Getting Started

### Executing program

The project will involve the following steps:

Setting up Remix:

1. Open the Remix IDE in your web browser.
* To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

2. Creating the Token Contract:

* Start a new file in the code editor within Remix. Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyToken {

    string public TName = "Pokemon";
    string public TAbb = "Pkm";
    uint256 public Supply = 0;

    mapping(address => uint256) public balance;

    function mint(address _add, uint256 _val) public {
        Supply =Supply + _val;
        balance[_add] += _val;
    }
    
    function burn(address _add, uint256 _val) public {
        require(balance[_add] >= _val, "Insufficient balance");
        Supply = (Supply - _val);
        balance[_add] = (balance[_add] - _val);
    }
}




3. Compiling the Contract:

* Use the Remix compiler panel to compile your token contract.
* Select the appropriate compiler version i.e 0.8.18.

4. Deploying the Contract:

* Switch to the "Deploy & run transactions" tab in Remix.
* Deploy the compiled contract by clicking the "Deploy" button.

5. Interacting with the Token:

* Utilize the Remix IDE to interact with the deployed token contract.
* Use the Addresstobalance, mint and burn functions in the "Deployed Contracts" section to perform actions like transferring tokens, checking balances, and burning tokens.
* Input the adress and value and click on the corresponding function buttons to execute our contract.


## Authors

Harsh Kumar (www.linkedin.com/in/harsh-kumar-91059b231)
 
## License

This project is licensed under the MIT License - see the LICENSE.md file for details.This code is licensed under the MIT License. You can find the license text in the SPDX-License-Identifier comment at the beginning of the contract.

Note: Ensure that you are using a compatible Solidity compiler version (0.8.18) or newer to compile and interact with this contract.
