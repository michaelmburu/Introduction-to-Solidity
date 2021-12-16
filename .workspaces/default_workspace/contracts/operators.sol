//import soloduty 
pragma solidity ^*;

contract Simple{
    //Arithmetic operators + - * / % **

    uint a = 2;
    uint b = 3;

    uint c = a ** b; // 8

    //Logical operators
    // ! && || == !=

    bool hasMoney = !false;

    //Bitwise
    // & ! ^ ~  >> <<
    bytes contractValue = 0x02 ! 0x01;
}