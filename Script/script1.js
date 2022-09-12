const PC = artifacts.require('ProxyContract')
const IC = artifacts.require('ImplementationContract')
const Web3 = require('web3');
module.exports = async () => {
    const PCInstance = await PC.deployed();
    const ICInstance = await IC.deployed();
    const accounts = await web3.eth.getAccounts();
    await PCInstance.changeAddress(ICInstance.address , {from : accounts[0]});
    console.log('------');
    let value = await PCInstance.setValue(10,{from : accounts[0]});
    console.log('value --->',value);
    value =await PCInstance.value();
    console.log('value --->',value);
}