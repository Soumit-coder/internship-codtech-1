// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// ERC-20 Token Contract
contract MyToken {

    // Token details
    string public name = "CodeTech Token";
    string public symbol = "CTT";
    uint8 public decimals = 18;
    uint256 public totalSupply = 1000000 * (10 ** uint256(decimals));

    // Stores the balance of each account
    mapping(address => uint256) public balanceOf;

    // Constructor assigns all tokens to the deployer
    constructor() {
        balanceOf[msg.sender] = totalSupply;
    }

    // Transfer tokens from one account to another
    function transfer(address _to, uint256 _value) public returns (bool) {

        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        return true;
    }
}