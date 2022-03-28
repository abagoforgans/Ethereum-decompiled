contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor12;

function _fallback() {
    stor0 = msg.sender
    stor1 = 1
    stor12 = 10^6
    stor2 = 5000
    stor6 = 2 * 10^18
    stor7 = 2 * 10^18
    stor8 = 4 * 10^18
    stor9 = 4 * 10^18
    stor4 = 10 * 10^18
    stor5 = 10 * 10^18
    stor3 = 0
    emit newGame(block.timestamp, 1);
    return code.data[191 len 2863]
}



// =====================  Runtime code  =====================


#
#  - _admin(uint256 arg1, uint256 arg2)
#  - play()
#
address owner;
uint256 gameNumber;
uint256 feesPerMillion;
uint256 jackpot;
uint256 target;
uint256 nextTarget;
uint256 minPlay;
uint256 nextMinPlay;
uint256 maxPlay;
uint256 nextMaxPlay;
mapping of uint256 playersAmounts;
array of address playersList;

function nextMinPlay() {
    return nextMinPlay
}

function feesPerMillion() {
    return feesPerMillion
}

function nextTarget() {
    return nextTarget
}

function playersAmounts(address arg1) {
    return playersAmounts[arg1]
}

function jackpot() {
    return jackpot
}

function playersList(uint256 arg1) {
    require arg1 < playersList.length
    return playersList[arg1]
}

function maxPlay() {
    return maxPlay
}

function owner() {
    return owner
}

function target() {
    return target
}

function gameNumber() {
    return gameNumber
}

function nextMaxPlay() {
    return nextMaxPlay
}

function minPlay() {
    return minPlay
}

function _fallback() payable {
    revert
}

function _withdraw(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 < eth.balance(this.address) - jackpot
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit payment(block.timestamp, address(arg1), arg2, 0);
    else:
        emit payment(block.timestamp, address(arg1), arg2, 1);
}



}
