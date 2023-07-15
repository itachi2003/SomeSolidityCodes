// first line tells you that the source code is licensed under the GPL version 3.0

// SPDX-License-Identifier: GPL-3.0


// 7 line specifies that the source code is written for Solidity version 0.4.16, or a newer version of the language up to, but not including version 0.9.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage {

    // declares a state variable called storedData of type uint (unsigned integer of 256 bits)
    uint storedData;

// the contract defines the functions set and get that can be used to modify or retrieve the value of the variable.
    function set(uint x) public {
        storedData = x;
    }

    function get() public view returns (uint) {
        return storedData;
    }
}