pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract ELBITCOIN is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function ELBITCOIN(address _owner)  UpgradeableToken(_owner) {
    name = "ELBITCOIN";
    symbol = "ELBT";
    totalSupply = 7700000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}