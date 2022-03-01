// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

contract EtherWallet {
    //address is the variable type
    address payable public owner;
//the constructor function is called once, at the beginning
//of the lifecycle of the smart contract

    constructor() {
        owner = payable(msg.sender);
    }
//this receive is a default function
    receive() external payable {}
//underscore is used in function parameters by convention
    function withdraw (uint _amount) external {
        //this function makes sure (somehow) that
        //only the owner can receive fund I guess
        require(msg.sender == owner, "Only the owner can call this method");
        //remember, msg.sender is the address that's
        //calling this function
        payable(msg.sender).transfer(_amount);
    }
    //view means this function is read only

function getBalance() external view returns (uint) {
    //address(this) refers to the address of the current smart contract
    return address(this).balance; 
}
}