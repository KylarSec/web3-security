// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Test1 {

    // Stores last ETH amount sent (in Wei)
    uint256 value;

    // Function can receive ETH
    function pay() public payable {
        // Save the amount of ETH sent
        value = msg.value;
    }

    // Read value in ETH
    function ReadValue() public view returns(uint256) {
        
        // 1 ETH = 1e18 wei
        return value / 1e18;
    }

    // A function to read total balance of the contract
    function ContractBalance() public view returns(uint256) {
        
        // Balance of this contract returned in ETH 
        return address(this).balance / 1e18; // Converted from wei to ETH
    }
} 