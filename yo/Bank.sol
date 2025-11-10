// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract Bank {

    uint256 balance = 0;
    address public accOwner;

    constructor(){

        accOwner = msg.sender;
    }


    // deposite

    function Deposite() public payable {
        require(accOwner == msg.sender, "You are not account owner");
        require(msg.value >0, "Ammount should be greater than 0");
        balance+=msg.value;

    }

    //withdraw

    function Withdraw ()public payable {
        require(accOwner == msg.sender, "You are not account owner");
        require(msg.value >0, "withdrawal amount should be greater than 0");
        balance-=msg.value;


    }

    //Show balance

    function ShowBalance() view public returns(uint256){
        require(accOwner==msg.sender, "You are not account owner");
        return balance;

    }

}
    