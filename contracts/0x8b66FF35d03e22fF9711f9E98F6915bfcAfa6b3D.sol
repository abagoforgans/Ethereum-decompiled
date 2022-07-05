contract main {




// =====================  Runtime code  =====================


uint256 counter;
address stor1;

function getCounter() {
    return counter
}

function kill() {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function add() {
    counter++
}

function subtract() {
    counter--
}

function _fallback() payable {
    revert
}



}
