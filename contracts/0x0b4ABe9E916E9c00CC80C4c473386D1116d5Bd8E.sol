contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0
    stor2 = block.timestamp + 300
    return code.data[68 len 397]
}



// =====================  Runtime code  =====================


address stor0;
uint256 numberOfDeposits;
uint256 unlockTime;

function getUnlockTime() {
    return unlockTime
}

function getNumberOfDeposits() {
    return numberOfDeposits
}

function kill() {
    if stor0 != msg.sender:
    if block.timestamp < unlockTime:
    selfdestruct(stor0)
}

function _fallback() payable {
    if msg.value > 0:
        numberOfDeposits++
}

function deposit() payable {
    if msg.value > 0:
        numberOfDeposits++
    return numberOfDeposits
}



}
