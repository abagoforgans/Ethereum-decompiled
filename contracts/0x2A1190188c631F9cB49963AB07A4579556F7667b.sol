contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - buyTicket(uint256 arg1)
#  - forceRoll()
#
address owner;
uint256 ticketPool;
uint256 ticketsBought;
uint256 buyerNumber;
uint256 ticketPrice;
uint256 winnerPrize;
uint256 jackpot;
uint256 jackpotFactor;
uint256 jackpotCut;
uint256 jackpotChance;
uint256 tokenCut;
address tokenAddress;
address bankAddress;
address bonusAddress;
uint256 ledgerCount;
uint256 queueIndex;
uint256 queueLength;
uint256 queueFunds;

function jackpotChance() {
    return jackpotChance
}

function ticketPrice() {
    return ticketPrice
}

function queueFunds() {
    return queueFunds
}

function winnerPrize() {
    return winnerPrize
}

function ticketPool() {
    return ticketPool
}

function jackpot() {
    return jackpot
}

function bonus() {
    return bonusAddress
}

function bank() {
    return bankAddress
}

function jackpotCut() {
    return jackpotCut
}

function tokenCut() {
    return tokenCut
}

function owner() {
    return owner
}

function jackpotFactor() {
    return jackpotFactor
}

function ledgerCount() {
    return ledgerCount
}

function queueLength() {
    return queueLength
}

function ticketsBought() {
    return ticketsBought
}

function buyerNumber() {
    return buyerNumber
}

function queueIndex() {
    return queueIndex
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function takeAll() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
