// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Tip {
    // an array to keep track of addresses of tippers.
    address[] public tippers;

    // to monitor how many times a user calls the fund() function.
    mapping(address => uint256) contributionCount;

    // Function to let user send small tip.
    function tinyTip() public payable {
        // the tip should be less than 1Gwei and gretaer than 0
        require(
            msg.value < 1e9 && msg.value > 0,
            "Tip Should be Greater than 0 and less than 1 gwie"
        );

        // Push the address of the tipper to the array
        tippers.push(msg.sender);

        // Count everytime a user funds
        contributionCount[msg.sender] += 1;
    }
}
