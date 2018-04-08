pragma solidity ^0.4.4;


contract SampleToken {
  uint256 INITIAL_SUPPLY = 115792089237316195423570985008687907853269984665640564039457584007913129639935;
  mapping(address => uint256) balances;

  function SampleToken() public {
    balances[msg.sender] = INITIAL_SUPPLY;
  }

  // transfer token for a specified address
  function transfer(address _to, uint256 _amount) public {
    require(balances[msg.sender] > _amount);
    balances[msg.sender] -= _amount;
    balances[_to] += _amount;
  }

  // Gets the balance of the specified address
  function balanceOf(address _owner) public constant returns (uint256) {
    return balances[_owner];
  }
}
