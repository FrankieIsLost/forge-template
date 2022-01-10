// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

//Payable user contract
contract User {
    fallback() external payable {}
}
