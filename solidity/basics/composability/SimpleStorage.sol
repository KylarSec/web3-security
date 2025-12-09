// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 public favoriteNumber;

    function store(uint256 _num) public virtual {
        favoriteNumber = _num;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
}
