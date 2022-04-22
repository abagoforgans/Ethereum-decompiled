contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor0 = 5
    stor1 = msg.sender
    require not msg.value
    return code.data[100 len 446]
}



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
