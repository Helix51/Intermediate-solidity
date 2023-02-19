pragma solidity ^0.8.0;
contract viewpurepayable{
   uint a=9;
   uint b=7;
   function VIEWset() public view returns(uint,uint,string memory){
    return(a,b,"Integers recieved inside");

   }
   function PUREset() public pure returns(uint,string memory){
    uint d=5;
    uint e=3;  
    return(d+e,"sum of two variables in data");
   }

    address g;
    uint p;
    function Payableset(address _g,uint _p) public payable {
    g=_g;
    p=_p;
      
   }
}
