contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 += Mask(248, 0, msg.value)
    return code.data[136 len 428]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    require msg.sender == stor0
    stor1 += Mask(248, 0, msg.value)
}



}
