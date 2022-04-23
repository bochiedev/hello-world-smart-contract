// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Ballot {
    address public owner;
    string public message;

    // struct Voter {
    //     mapping(uint256 => IndeValue) data;
    //     KeyFlag[] keys;
    //     uint256 size;
    // }

    // struct Election {
    //     mapping(uint256 => IndexValue) data;
    //     KeyFlag[] keys;
    //     uint256 size;
    // }

    constructor(string memory _message) {
        owner = msg.sender;
        message = _message;
    }

    function Helloworld(string memory _name)
        public
        pure
        returns (string memory)
    {
        return _name;
    }

    function setMessage(string memory _message) public {
        message = _message;
    }
}
