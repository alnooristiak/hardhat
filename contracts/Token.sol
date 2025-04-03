// SPDX-License-Identifier:UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

contract Token {
    string public name = "hardHat Token";
    string public symbol = "NOOR";
    uint public totalSupply = 10000;

    // owner name
    address public owner;

    // which address how many amounts of token
    mapping(address => uint256) balances;

    constructor() {
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }

    function transfer(address to, uint amount) external {
        require(balances[msg.sender] >= amount, "Not enough tokens");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }
}
