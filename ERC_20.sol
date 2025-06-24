// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract AmarCoin is ERC20,Ownable{
    constructor() ERC20("AMARJEET","AMAR") Ownable(msg.sender){
        _mint(msg.sender,100000);
     
    }
    function mintTo(address account,uint256 amount) public  onlyOwner{
        _mint(account,amount);
    }

}
//Renouce ownership transfer the address to 0


