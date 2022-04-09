contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0
    return code.data[60 len 331]
}



// =====================  Runtime code  =====================


address stor0;
uint256 numberOfDeposits;

function getNumberOfDeposits() {
    return numberOfDeposits
}

function kill() {
    if stor0 != msg.sender:
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
