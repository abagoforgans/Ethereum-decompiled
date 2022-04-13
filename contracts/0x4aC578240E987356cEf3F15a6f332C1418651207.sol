contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() {
    mem[96 len -529] = code.data[801 len -529]
    mem[64] = -433
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[272 len 529]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 sub_f30c9883;

function sub_f30c9883(?) {
    return sub_f30c9883[0 len sub_f30c9883.length]
}

function die() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}



}
