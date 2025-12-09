// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Import SimpleStorage contract from solidity file.
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    // State variable to store the deployed SimpleStorage contract 
    // Left side is contract type and right side is the variable 
    SimpleStorage public simpleStorage;

    // Function To deploy a new simplestorage contract
    function createSimpleStorage() public {
        // Deploys a new SimpleStorage contract and saves its address in 'simpleStorage'
        simpleStorage = new SimpleStorage();    
    }
}
