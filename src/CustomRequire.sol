// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract CustomRequire {
    function require(bool condition, bytes4 _reason) internal pure {
        if (!condition) {
            assembly {
                mstore(0x0, _reason)
                revert(0x0, 4)
            }
        }
    }
}
