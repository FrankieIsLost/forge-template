// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import {DSTest} from "ds-test/test.sol";
import {User} from "./User.sol";
import {Hevm} from "./Hevm.sol";

//common utilities for forge tests
contract Utilities is DSTest {
    Hevm internal immutable hevm = Hevm(HEVM_ADDRESS);

    //create users with 100 ether balance
    function createUsers(uint256 userNum) external returns (address[] memory) {
        address[] memory users = new address[](userNum);
        for (uint256 i = 0; i < 5; i++) {
            User u = new User();
            hevm.deal(address(u), 100 ether);
            users[i] = address(u);
        }
        return users;
    }

    //move block.number forward by a given number of blocks
    function mineBlocks(uint256 numBlocks) external {
        uint256 targetBlock = block.number + numBlocks;
        hevm.roll(targetBlock);
    }
}
