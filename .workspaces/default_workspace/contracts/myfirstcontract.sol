// SPDX-License-Identifier: MIT
//import solidity
pragma solidity ^0.8.10;

contract MyInheritance {
    address owner;
    bool deceased;
    uint money;

    //Initialize constructor
    constructor() payable{
        owner = msg.sender;
        money = msg.value;
        deceased = false;
    }

    //oneOnwer modifier
    modifier oneOwner{
        require (msg.sender == owner);
        _;
    }

    //isDeceased modifier
    modifier isDeceased{
        require(deceased == true);
        _;
    }

    //Create an array of wallets
    address[] wallets;

    mapping(address => uint) inheritance;

    function setup(address _wallet, uint _inheritance) public oneOwner{
        wallets.push(_wallet);
        inheritance[_wallet] = _inheritance;
    }

    function moneyPaid() private isDeceased {
        for(uint i=0; i<wallets.length; i++){
            wallets[i].transfer(inheritance[wallets[i]]);
        }
    }

    function died() public oneOwner {
        deceased = true;
        moneyPaid();
    }
}