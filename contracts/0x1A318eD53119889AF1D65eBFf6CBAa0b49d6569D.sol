contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[96 len -389] = code.data[617 len -389]
    mem[64] = -293
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[228 len 389]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 greet;

function greet() {
    return greet[0 len greet.length]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}



}
