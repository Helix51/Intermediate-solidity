// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    string public name = "Kannan";
    string public symbol = "KAN";
    uint256 public totalSupply = 10000000;
    uint8 public decimals = 9;
    
    mapping(address => uint256) public balanceOf;
    
    address public owner;
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }
    
    constructor() {
        owner = msg.sender;
        balanceOf[owner] = totalSupply;
    }
    
    function mint(uint256 amount) public onlyOwner {
        balanceOf[owner] += amount;
        totalSupply += amount;
    }
}
