// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// NOTE: Deploy this contract first
contract Implementation {
    // NOTE: storage layout must be the same as contract oneCall
    uint public num;
    address public sender;
    uint public value;
    uint z;

    function sum(uint x,uint y) public  payable {
      z=x+y;
      
    }
 
}

contract Proxy {
    uint public num;
    address public sender;
    uint public value;
    uint z;
    function sum(address _contract, uint x,uint y) public  payable {
    
      (bool success, bytes memory data) = _contract.delegatecall(
            abi.encodeWithSignature("sum(uint256)",x,y)
        );
    }    


}
