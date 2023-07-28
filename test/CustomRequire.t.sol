// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/CustomRequire.sol";

error TestError();

contract CustomRequireTest is CustomRequire, Test {
    function test_WhenDoesntRevert() public {
        require(true, TestError.selector);
    }

    function testWhenReverts() public {
        vm.expectRevert(abi.encodeWithSelector(TestError.selector));
        require(false, TestError.selector);
    }
}
