const PC = artifacts.require('ProxyContract');
module.exports = async function (deployer){
    deployer.deploy(PC);
}