// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.5;
pragma abicoder v2;

/// @title ETHConnector
/// @notice Allows deposits and withdrawals of ETH
interface IETHConnector {
    /// @notice Unwraps the contract's WETH9 balance and sends it to recipient as ETH.
    /// @dev The amountMinimum parameter prevents malicious token contracts from stealing WETH9 from users.
    function unwrapWETH9(uint256 amountMinimum, address recipient) external payable;

    /// @notice Unwraps the contract's WETH10 balance and sends it to recipient as ETH.
    /// @dev The amountMinimum parameter prevents malicious token contracts from stealing WETH10 from users.
    function unwrapWETH10(uint256 amountMinimum, address payable recipient) external payable;
}
