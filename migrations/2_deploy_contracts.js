const TGCCrowdsale = artifacts.require("./TGCCrowdsale.sol")

module.exports = function(deployer, network, accounts) {
 //TODO: Remove this when deploy.
 const startTime = web3.eth.getBlock(web3.eth.blockNumber).timestamp + 1
 const endTime = startTime + (86400 * 20) 
 // const startTime = 1511730000; // 		6:00:00 PM GMT-03:00 - 26/11/17
 // const endTime = 1511920800; // 			11:00:00 PM GMT-03:00 - 28/11/17
 const rate = new web3.BigNumber(1000)
 const wallet = accounts[0]

 deployer.deploy(TGCCrowdsale, startTime, endTime, rate, wallet)
};
