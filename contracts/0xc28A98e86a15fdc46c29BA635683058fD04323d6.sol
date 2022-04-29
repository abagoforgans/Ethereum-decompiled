contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor103;
uint256 stor104;
uint8 stor107;

function _fallback() payable {
    stor1 = 4
    stor2 = 10^16
    stor103 = 10^16
    stor104 = 10^15
    stor107 = 1
    stor0 = msg.sender
    return code.data[148 len 3293]
}



// =====================  Runtime code  =====================


address owner;
array of address stor1;
uint256 jackPot;
array of address ticket;
uint256 ticketPrice;
uint256 toJackPotfromEveryTicket;
uint256 lastWinNumber;
uint256 ticketCounter;
uint8 playFast;

function countTickets() {
    return stor1.length
}

function JackPot() {
    return jackPot
}

function ticketPrice() {
    return ticketPrice
}

function tickets(uint256 arg1) {
    require arg1 < 100
    return ticket[arg1]
}

function getLastWinNumber() {
    return lastWinNumber
}

function toJackPotfromEveryTicket() {
    return toJackPotfromEveryTicket
}

function getTicket(uint256 arg1) {
    require arg1 < 100
    return ticket[arg1]
}

function ticketCounter() {
    return ticketCounter
}

function owner() {
    return owner
}

function lastWinNumber() {
    return lastWinNumber
}

function playFast() {
    return bool(playFast)
}

function getJackPot() {
    return jackPot
}

function killMe() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function clearTickets() {
    idx = 0
    while idx < stor1.length:
        require idx < 100
        ticket[idx] = 0
        idx = idx + 1
        continue 
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getAdopters() {
    idx = 3296
    s = 3
    while 6496 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    return ticket.length, mem[3328 len 3168]
}

function setLotteryParameters(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) {
    require msg.sender == owner
    stor1.length = arg1
    ticketPrice = arg2
    toJackPotfromEveryTicket = arg3
    jackPot = arg4
    playFast = uint8(arg5)
}

function PlayNow() {
    require stor1.length
    lastWinNumber = (block.hash(block.number - 1) % stor1.length) + 1
    require lastWinNumber < 100
    if ticket[stor105]:
        call msg.sender with:
           value jackPot wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer(jackPot, this.address, msg.sender);
        jackPot = 0
    idx = 0
    while idx < stor1.length:
        require idx < 100
        ticket[idx] = 0
        idx = idx + 1
        continue 
    return 1
}

function adopt(uint256 arg1) payable {
    require msg.value >= ticketPrice
    require arg1 >= 0
    require arg1 <= stor1.length
    require arg1 < 100
    if ticket[arg1]:
        return 0
    jackPot += toJackPotfromEveryTicket
    require arg1 < 100
    ticket[arg1] = msg.sender
    emit Transfer(ticketPrice, msg.sender, this.address);
    if playFast:
        require stor1.length
        lastWinNumber = (block.hash(block.number - 1) % stor1.length) + 1
        require lastWinNumber < 100
        if ticket[stor105]:
            call msg.sender with:
               value jackPot wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer(jackPot, this.address, msg.sender);
            jackPot = 0
        idx = 0
        while idx < stor1.length:
            require idx < 100
            ticket[idx] = 0
            idx = idx + 1
            continue 
    else:
        ticketCounter++
        if ticketCounter == stor1.length:
            require stor1.length
            lastWinNumber = (block.hash(block.number - 1) % stor1.length) + 1
            require lastWinNumber < 100
            if ticket[stor105]:
                call msg.sender with:
                   value jackPot wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Transfer(jackPot, this.address, msg.sender);
                jackPot = 0
            idx = 0
            while idx < stor1.length:
                require idx < 100
                ticket[idx] = 0
                idx = idx + 1
                continue 
    return arg1
}



}
