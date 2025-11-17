# OctoSwap CL-V2 Core Contracts

## Contract Details
- **Contract Name**: `OctoswapV2Factory`
- **Solidity Version**: `^0.7.6`
- **Compiler Settings**:
  - **Optimization**: `Enabled` (Runs: `800`)
  - **EVM Version**: `Istanbul`

- **Deployed Address (Monad Mainnet)**: `0x30Db57A29ACf3641dfc3885AF2e5f1F5A408D9CB`

# OctoSwap Changes (Uniswap V3 Core)

Comparison between `octoswap-v2-core` and original `uniswap/v3-core`.

## Contract Changes

### OctoswapV2Factory.sol (UniswapV3Factory.sol)
- **Line 6**: Import `'./UniswapV3PoolDeployer.sol'` → `'./OctoswapV2PoolDeployer.sol'`
- **Line 9**: Import `'./UniswapV3Pool.sol'` → `'./OctoswapV2Pool.sol'`
- **Line 13**: Contract name and inheritance `UniswapV3Factory is IUniswapV3Factory, UniswapV3PoolDeployer, NoDelegateCall` → `OctoswapV2Factory is IUniswapV3Factory, OctoswapV2PoolDeployer, NoDelegateCall`

### OctoswapV2Pool.sol (UniswapV3Pool.sol)
- **Line 30**: Contract name `UniswapV3Pool` → `OctoswapV2Pool`

### OctoswapV2PoolDeployer.sol (UniswapV3PoolDeployer.sol)
- **Line 6**: Import `'./UniswapV3Pool.sol'` → `'./OctoswapV2Pool.sol'`
- **Line 8**: Contract name `UniswapV3PoolDeployer` → `OctoswapV2PoolDeployer`
- **Line 35**: Type reference `new UniswapV3Pool{salt: keccak256(...)}()` → `new OctoswapV2Pool{salt: keccak256(...)}()`

## Unchanged Components

- **NoDelegateCall.sol**: Identical (100% match)
- **Interfaces**: All interface files identical (100% match)
- **Libraries**: All library files identical (100% match)

---

## Summary

All changes are purely branding-related (contract names only). All functional code, including pool logic, fee tiers (500/3000/10000 bps), tick spacing, mathematical libraries, Solidity versions, and compiler optimization settings remain 100% identical to the original Uniswap V3 Core contracts.