const IC = artifacts.require('ImplementationContract');
module.exports = async function (deployer){
    deployer.deploy(IC);
}