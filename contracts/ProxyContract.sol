// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

import './ImplementationContract.sol';

contract ProxyContract {
    address public implementationAddress;
    address owner ;

    constructor(){
        owner = msg.sender;
    }

    function setValue(uint256 _value) public {
        (bool success, bytes memory data) = implementationAddress.delegatecall(
            abi.encodeWithSelector(implementationContract.setValue.selector, _value)
        );
        require(success,'Delegate Call Successful');
    }
    
    
}