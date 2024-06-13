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
