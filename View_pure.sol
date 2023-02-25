// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    uint256 public x;
    
    function setX(uint256 _x) public {
        x = _x;
    }
    
    function getX() public view returns (uint256) {
        return x;
    }
    
    function double(uint256 _x) public pure returns (uint256) {
        return _x * 2;
    }
}
