// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;

import '../OctoswapV2Pool.sol';

/// @title Init Hash
/// @notice Returns the init code hash of OctoswapV2Pool for CREATE2 address computation
contract InitHash {
    /// @notice Returns the keccak256 hash of the OctoswapV2Pool creation code
    /// @dev This hash is used to predict pool addresses in the factory
    /// @return The init code hash as bytes32
    function getInitHash() public pure returns (bytes32) {
        bytes memory bytecode = type(OctoswapV2Pool).creationCode;
        return keccak256(bytecode);
    }

    /// @notice Returns the init code hash as a hex string for logging
    /// @dev Useful for updating factory contracts or documentation
    function getInitHashHex() public pure returns (bytes32) {
        return getInitHash();
    }
}
