contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - playerPull()
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#
uint8 stor5;
address owner; offset 8
uint256 minBet;
uint256 maxBet;
uint32 gasForOraclize;
uint256 totalBets;
uint256 totalWeiWagered;
uint256 totalWeiWon;
uint256 randomQueryID;
mapping of uint256 playerGetPendingTxBy;

function totalWeiWon() {
    return totalWeiWon
}

function maxBet() {
    return maxBet
}

function playerGetPendingTxByAddress(address arg1) {
    return playerGetPendingTxBy[address(arg1)]
}

function totalWeiWagered() {
    return totalWeiWagered
}

function gasForOraclize() {
    return gasForOraclize
}

function owner() {
    return owner
}

function minBet() {
    return minBet
}

function totalBets() {
    return totalBets
}

function randomQueryID() {
    return randomQueryID
}

function gamePaused() {
    return bool(stor5)
}

function ownerkill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function ownerSetMinBet(uint256 arg1) {
    require owner == msg.sender
    minBet = arg1
}

function ownerSetMaxBet(uint256 arg1) {
    require owner == msg.sender
    maxBet = arg1
}

function ownerChangeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function ownerPauseGame(bool arg1) {
    require owner == msg.sender
    stor5 = uint8(arg1)
}

function ownerSetOraclizeSafeGas(uint32 arg1) {
    require owner == msg.sender
    gasForOraclize = arg1
}

function withdrawBalance(uint256 arg1) {
    require owner == msg.sender
    if eth.balance(this.address) > arg1:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
}

function ownerRefundPlayer(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) {
    require owner == msg.sender
    call arg2 with:
       value arg4 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogRefund(arg1, arg2, arg4);
}

function playerWithdrawPendingTransactions() {
    playerGetPendingTxBy[address(msg.sender)] = 0
    call msg.sender with:
       value playerGetPendingTxBy[address(msg.sender)] wei
         gas gas_remaining - 34710 wei
    if not ext_call.success:
        return 0
    return 1
}



}
