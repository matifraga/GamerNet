pragma solidity ^0.4.11;

import "zeppelin-solidity/contracts/token/PausableToken.sol";
import "zeppelin-solidity/contracts/token/MintableToken.sol";
import "./BurnableToken.sol";

contract TGCToken is MintableToken, BurnableToken, PausableToken {
  string public name = "GamerNet COIN";
  string public symbol = "TGC";
  uint256 public decimals = 18;

  function burn(uint256 _value) whenNotPaused public {
   super.burn(_value);
  }
}