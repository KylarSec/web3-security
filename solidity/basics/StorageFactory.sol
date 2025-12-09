// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public storageContracts;

    function createSimpleStorage() public {
        SimpleStorage newContract = new SimpleStorage();
        storageContracts.push(newContract);
    }
}
