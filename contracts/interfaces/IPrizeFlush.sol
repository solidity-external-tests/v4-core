// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.6;
import "./IReserve.sol";
import "./IStrategy.sol";

interface IPrizeFlush {
  // Events
  event Flushed(address indexed recipient, uint256 amount);

  // Functions
  function getDestination() external view returns (address);
  function getReserve() external view returns (IReserve);
  function getStrategy() external view returns (IStrategy);
  function setDestination(address _destination) external returns (address);
  function setReserve(IReserve _reserve) external returns (IReserve);
  function setStrategy(IStrategy _strategy) external returns (IStrategy);
  function flush() external returns (bool);
}