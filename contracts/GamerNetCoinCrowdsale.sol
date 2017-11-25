pragma solidity ^0.4.11;

import './GamerNetCoin.sol';
import 'zeppelin-solidity/contracts/crowdsale/Crowdsale.sol';

contract GamerNetCoinCrowdsale is Crowdsale {

  function GamerNetCoinCrowdsale (uint256 _startTime, uint256 _endTime, uint256 _rate, address _wallet)
    Crowdsale(_startTime, _endTime, _rate, _wallet) public {
  }

  // Creates the token to be sold.
  function createTokenContract() internal returns (MintableToken) {
    return new GamerNetCoin();
  }

}