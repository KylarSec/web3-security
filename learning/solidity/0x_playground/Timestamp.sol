// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract TimeTest {

    // Stores the block timestamp at the time of contract deployment
    // This acts as the reference/start time
    uint256 StartTime ;

    // Constructor runs once during deployment
    // Sets StartTime to the timestamp of the deployment block
    constructor() {
        StartTime = block.timestamp;
    }

     // Constant string that will be returned by the function
    string constant MESSAGE = "Hello World!";

     // Modifier that allows execution only after a specified duration
    modifier onlyAfter(uint256 _time) {
        // Check if the current block time is greater than or equal to
        // deployment time + specified duration
        require(block.timestamp >= StartTime + _time , "Too Early");
        _;
    }

    // Function that can only be executed after 30 seconds (it can be changed)
    // from the time the contract was deployed
    function ShowMessage()  public view onlyAfter(30 seconds) returns(string memory)  {
        return MESSAGE;
    }

}

