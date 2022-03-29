contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 754]




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function piggyBank() {
    stor0 = msg.sender
    stor1 = Mask(248, 0, stor1 + msg.value)
}

function _fallback() {
    require msg.sender == stor0
    stor1 = Mask(248, 0, stor1 + msg.value)
}



}
