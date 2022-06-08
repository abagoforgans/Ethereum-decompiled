contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() {
    mem[96 len -511] = code.data[775 len -511]
    mem[64] = -415
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[264 len 511]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 say;

function say() {
    return say[0 len say.length]
}

function die() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}



}
