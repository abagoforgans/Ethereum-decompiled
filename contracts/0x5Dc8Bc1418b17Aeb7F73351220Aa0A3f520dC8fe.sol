contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
uint256 ticketPrice;
uint256 totalTickets;
mapping of address tickets;

function ticketPrice() {
    return ticketPrice
}

function tickets(uint256 arg1) {
    return address(tickets[arg1])
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function totalTickets() {
    return totalTickets
}

function resetLotto() {
    require msg.sender == owner
    totalTickets = 0
}

function setTicketPrice(uint256 arg1) {
    require msg.sender == owner
    ticketPrice = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function _fallback() payable {
    require msg.value >= ticketPrice
    uint256(tickets[stor3]) = msg.sender or Mask(96, 160, uint256(tickets[stor3]))
    totalTickets++
}

function withdrawEth() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
