contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() {
    mem[96 len -443] = code.data[685 len -443]
    mem[64] = -347
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[242 len 443]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 greet;

function owner() {
    return owner
}

function greet() {
    return greet[0 len greet.length]
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}



}
