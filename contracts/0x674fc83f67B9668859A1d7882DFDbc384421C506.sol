contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() {
    mem[96 len -534] = code.data[800 len -534]
    mem[64] = -438
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[266 len 534]
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
