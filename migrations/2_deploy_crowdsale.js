const AdYoToken = artifacts.require("AdYoToken");

module.exports = function (deployer, network, accounts) {
    deployer.deploy(AdYoToken, accounts[0]);
};