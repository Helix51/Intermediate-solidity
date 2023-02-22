// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Event {

 
    event messLog1(address sender,uint,uint );
    function test()    payable  public {
      emit messLog1(msg.sender,msg.value,1);
        
        
        
    }
}
