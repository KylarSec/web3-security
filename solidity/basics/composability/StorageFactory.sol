// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Import SimpleStorage contract from solidity file.
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    
    // A list to Store deployed SimpleStorage Contracts
    SimpleStorage[] public ListOfSimpleStorageConracts;

    // Function To deploy a new simplestorage contract
    function createSimpleStorage() public {
        // Deploy a new SimpleStorage contract and save its address temporarily in 'newSimpleStorageContract'
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        // Push the new contract into the list to store it permanently
        ListOfSimpleStorageConracts.push(newSimpleStorageContract);
    }
}
