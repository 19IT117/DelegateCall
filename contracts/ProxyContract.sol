// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

import './ImplementationContract.sol';

contract ProxyContract {
    address public implementationAddress;
    address  owner ;
    uint public value;
    constructor(){
        owner = msg.sender;
    }

    function setValue(uint256 _value) public returns(bool){
        // (bool success,)=implementationAddress.delegatecall(
        //     abi.encodeWithSignature('setValue(uint256)',_value)
        // );
        (bool success, bytes memory data) = implementationAddress.delegatecall(
            abi.encodeWithSelector(ImplementationContract.setValue.selector, _value)
        );
        return success;
        
       //require(success,'Delegate Call Successful');
    }
    
    function changeAddress(address _implementationAddress) public {
        require(msg.sender == owner , 'only owner');
        implementationAddress = _implementationAddress;
    }
}