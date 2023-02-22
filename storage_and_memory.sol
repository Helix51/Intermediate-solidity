// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract storage_memory {
    uint private storedNumber;
    
//"Number_in_storage" Stored in storage
    
    function setNumber(uint number) public {
        Number_in_storage = number;
    }
    
    function getNumber() public view returns (uint) {
        return storedNumber;
    }
//"result" stored in memory

    function addNumbers(uint a, uint256 b) public pure returns (uint) {
        uint result = a + b;
        return result;
    }
    
    
}    
    
