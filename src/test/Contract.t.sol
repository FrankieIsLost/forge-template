// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import {DSTest} from "ds-test/test.sol";
import {Utilities} from "./utils/Utilities.sol";
import {User} from "./utils/Utilities.sol";
import {Hevm} from "./utils/Hevm.sol";

contract ContractTest is DSTest {
    Hevm internal immutable hevm = Hevm(HEVM_ADDRESS);

    Utilities internal utils = new Utilities();
    address[] internal users = utils.createUsers(5);

    function setUp() public {}

    function testExample() public {
        address alice = users[0];
        address bob = users[1];
        hevm.prank(alice);
        (bool sent, bytes memory data) = bob.call{value: 10 ether}("");
        assertTrue(sent);
        assertGt(bob.balance, alice.balance);
    }
}
