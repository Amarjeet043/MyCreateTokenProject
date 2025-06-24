// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract AmarjeetCoin{
    address public owner;
    uint public totalSupply;
    mapping (address=>uint) public balances;
        mapping (address=>mapping(address=>uint))public allowances;

    string public coinname="Amarjeet";
    string public symbol="Amar"; 
    //It should have follow certain standard so it will follow erc-20
    //The wallets of backpack and metamask wouldnt able to parse these accoun t

    constructor(){
        owner=msg.sender;
    }
    function aprove(address _spender,uint _value)public returns(bool sucess){
        allowances[msg.sender][_spender]=_value;
        return true;
    }
    function transferFrom(address _from,address _to,uint256 _value)public returns(bool sucess){
        uint allowance=allowances[msg.sender][_from];
        require(allowance>=_value);
        uint balance=balances[_from];
        require(balance>=_value);
        balances[_from]-=_value;
        balances[_to]+=_value;
        allowances[msg.sender][_from]-=_value;
        return true;





    }
    function mint(uint amount)public{
        require(owner==msg.sender);
        balances[owner]+=amount;
        totalSupply+=amount;
  
    }
    function mintTo(uint amount,address to)public{
        require(owner==msg.sender);
        balances[to]+=amount;
        totalSupply+=amount; 

    }
    function transfer(uint amount,address to)public {
        uint existingBalances=balances[msg.sender];
        require(existingBalances>=amount);
        balances[msg.sender]-=amount;
        balances[to]+=amount;

    }
    function burn(uint amount)public{
        uint balance=balances[msg.sender];
        require(balance>=amount,"You dont have enough funds" );
        balances[msg.sender]-=amount;
        totalSupply-=amount;


        

    }
}