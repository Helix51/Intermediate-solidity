// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Event {

    event messLog1(address indexed sender);
    event messLog2(uint indexed number,string message1);
    event messlog3(address indexed sender,string indexed message2);


    function test() public {
        emit messLog1(msg.sender);
        emit messLog2(1,"Address recorded");
        emit messlog3(msg.sender,"Hello Sender");
        
    }
}
