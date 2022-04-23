const Tickets = artifacts.require('Tickets'); 
const assert = require('assert'); 


contract('Tickets', (accounts)=> {
    const BUYER = accounts[1];
    const TICKET_ID = 0;


    it('It should allow a user to buy a ticket', async ()=> {
        const instance = await Tickets.deployed()
        const originalTicket = instance.tickets(TICKET_ID);

        await instance.buyTicket(TICKET_ID, {from:BUYER, value:originalTicket.price,});

        const updatedTicket = await instance.tickets(TICKET_ID);

        assert.equal(updatedTicket.owner, BUYER, "The Buyer should own this ticket")

    })

})