contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[419 len 32]
    return code.data[90 len 329]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function multiply(int256 arg1) {
    emit Multiplied((arg1 * stor1), arg1, msg.sender);
    return (arg1 * stor1)
}



}
