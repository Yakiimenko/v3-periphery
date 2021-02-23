// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.7.6;

import '../libraries/PoolAddress.sol';

contract PoolAddressTest {
    function POOL_INIT_CODE_HASH() external pure returns (bytes32) {
        return PoolAddress.POOL_INIT_CODE_HASH;
    }

    function computeAddress(
        address factory,
        address tokenA,
        address tokenB,
        uint24 fee
    ) external pure returns (address) {
        return PoolAddress.computeAddress(factory, PoolAddress.PoolKey({tokenA: tokenA, tokenB: tokenB, fee: fee}));
    }

    function getGasCostOfComputeAddress(
        address factory,
        address tokenA,
        address tokenB,
        uint24 fee
    ) external view returns (uint256) {
        PoolAddress.PoolKey memory poolKey = PoolAddress.PoolKey({tokenA: tokenA, tokenB: tokenB, fee: fee});
        uint256 gasBefore = gasleft();
        PoolAddress.computeAddress(factory, poolKey);
        return gasBefore - gasleft();
    }
}
