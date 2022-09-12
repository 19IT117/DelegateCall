// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;
contract implementationContract{
    address public implementationAddress;
    address owner ;
    uint value;
    function setValue(uint _value) public{
        value = _value;
    }
    
}