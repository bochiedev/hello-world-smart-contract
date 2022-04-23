// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

uint256 constant TOTAL_TICKETS = 10;

contract Tickets {
    address public owner = msg.sender;
    struct Ticket {
        uint256 id;
        uint256 price;
        bool isSold;
        address owner;
    }

    Ticket[TOTAL_TICKETS] public tickets;

    // initialize by creating all tickets
    constructor() {
        for (uint256 index = 0; index < TOTAL_TICKETS; index++) {
            // tickets[index].id = index;
            tickets[index].owner = address(0x0);
            tickets[index].price = 1e17;
        }
    }

    // Buy ticket function
    function buyTicket(uint256 _index) external payable {
        require(_index < TOTAL_TICKETS && _index >= 0);
        require(tickets[_index].owner == address(0x0));
        require(tickets[_index].isSold == false);

        tickets[_index].owner = msg.sender;
        tickets[_index].isSold = true;
    }
}
