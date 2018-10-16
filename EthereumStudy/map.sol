pragma solidity ^0.4.4;
contract Mapping{
    
   mapping(address=>uint) balances;
    function update(address a,uint newbalance) public{
        balances[a]=newbalance;
    }
    function searchBalance(address a)constant public returns(uint){
        return balances[a];
    }
}
