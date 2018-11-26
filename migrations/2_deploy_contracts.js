var CryptoDoggies = artifacts.require('CryptoDoggies');
var CryptoRob = artifacts.require('CryptoRob');

module.exports = function (deployer) {
  deployer.deploy(CryptoDoggies);
  deployer.deploy(CryptoRob);
};
