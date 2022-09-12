// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;
contract ImplementationContract {
    address public implementationAddress;
    address owner ;
    uint public value;
    function setValue(uint _value) public{
        value = 7*_value;
    }

}