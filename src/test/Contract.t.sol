// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import {DSTest} from "ds-test/test.sol";
import {Utilities} from "./utils/Utilities.sol";
import {console} from "./utils/Console.sol";
import {Vm} from "forge-std/Vm.sol";

contract ContractTest is DSTest {
    Vm internal immutable vm = Vm(HEVM_ADDRESS);

    Utilities internal utils;
    address payable[] internal users;

    function setUp() public {
        utils = new Utilities();
        users = utils.createUsers(5);
    }

    function testExample() public {
        address payable alice = users[0];
        // labels alice's address in call traces as "Alice [<address>]"
        vm.label(alice, "Alice");
        console.log("alice's address", alice);
        address payable bob = users[1];
        vm.label(bob, "Bob");

        vm.prank(alice);
        (bool sent, ) = bob.call{value: 10 ether}("");
        assertTrue(sent);
        assertGt(bob.balance, alice.balance);
    }

    function testLogArray() public {
        address[] memory addresses = new address[](2);
        addresses[0] = users[0];
        addresses[1] = users[1];
        console.log(addresses);
    }

    function testLogStrings() public {
        string[] memory strings = new string[](2);
        strings[0] = "string1";
        strings[1] = "string2";
        console.log(strings);
    }

    function testLogBools() public {
        bool[] memory bools = new bool[](2);
        bools[0] = true;
        bools[1] = false;
        console.log(bools);
    }

    function testLogBytes() public {
        bytes32[] memory bytess = new bytes32[](2);
        bytess[0] = bytes32(0);
        bytess[1] = bytes32(0);
        console.log(bytess);
    }

    function testLogUint() public {
        uint256[] memory uints = new uint256[](2);
        uints[0] = 1337;
        uints[1] = 1338;
        console.log(uints);
    }
}
