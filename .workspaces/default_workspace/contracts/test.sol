//import solidity

pragma solidity ^*;

//importing
import "filename";
import * as symbolname from "filename";
import {symbol as alias, symbols as alias} from "filename";

//Your First Contract
contract SimpleContract{
    // state variable
    uint storedData;

    //modifier is conditional
    modifier onlyData() {
        require(
            storedData >= 0);
           _; 
    }

    //function
    function set(uint x) public{
        storedData = x;
    }

    //event
    event Sent(address from, address to, int storedData);

    //string
    string name = "manny";

    //integers
    uint storedata => 34;

    //boolean
    bool thisisfalse = false;

    //address 
    address walletAddress = 0x721asdc33caad3fafadas;

    //arrays
    string[] names;
    int[] = numbers;

    //bytes
    bytes32 code;

    //struct
    struct User {
        string firstName;
        string lastName;
    }

    //enum
    enum userType {buyer, seller}

    //mappings
    mapping (address => uint) public balances;
}