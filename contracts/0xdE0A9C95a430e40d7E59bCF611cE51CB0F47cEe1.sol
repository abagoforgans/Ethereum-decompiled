contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;
address stor4;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    require not msg.value
    stor4 = msg.sender
    return code.data[64 len 1238]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 payoutIdx;
uint256 collectedFees;
uint256 balance;
address owner;

function owner() {
    return owner
}

function collectedFees() {
    return collectedFees
}

function payoutIdx() {
    return payoutIdx
}

function balance() {
    return balance
}

function setOwner(address arg1) {
    if owner == msg.sender:
        owner = arg1
}

function participants(uint256 arg1) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function collectFees() {
    if owner == msg.sender:
        if collectedFees:
            call owner with:
               value collectedFees wei
                 gas 2300 * is_zero(value) wei
            collectedFees = 0
}

function _fallback() {
    if msg.value < 2 * 10^16:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        if msg.value <= 5 * 10^16:
            call msg.sender with:
               value msg.value - 5 * 10^16 wei
                 gas 2300 * is_zero(value) wei
    revert 
}

function enter() payable {
    if msg.value < 2 * 10^16:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        if msg.value <= 5 * 10^16:
            call msg.sender with:
               value msg.value - 5 * 10^16 wei
                 gas 2300 * is_zero(value) wei
    revert 
}



}
