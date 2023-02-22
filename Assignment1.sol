//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

contract Store_Transactions {

    mapping (address => uint) private balance;

    //store wallet address
    address Store=0xb794F5eA0ba39494cE839613fffBA74279579268;
    
    
    event Payments(address indexed from, uint indexed amount);
    event Withdraw(uint indexed amount);

    function Initial_Balance(uint amount) public payable {
        balance[Store] = amount;

    
    }
    function pay(address _from, uint _number) public payable {
        if (balance[_from] >= _number){
        revert("Buyer do not have enough funds for the Purchase");
        }

        balance[_from] -= _number;
        balance[Store] += _number;
        emit Payments(_from, _number);
    }

    function withdraw(uint _number) public payable {
        require(balance[Store] > 0, "Currently Wallet Is Empty");
        balance[Store] -= _number;
        emit Withdraw(_number);
        
        
    }

    function getBalance() public view returns(uint) {
        assert(Store==0xb794F5eA0ba39494cE839613fffBA74279579268);
        return balance[Store];        
    } 



}
