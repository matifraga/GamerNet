pragma solidity ^0.4.13;

import 'zeppelin-solidity/contracts/token/MintableToken.sol';

contract GamerNetCoin is MintableToken {
  string public name = "GamerNet COIN";
  string public symbol = "TGC";
  uint256 public decimals = 18;
}
