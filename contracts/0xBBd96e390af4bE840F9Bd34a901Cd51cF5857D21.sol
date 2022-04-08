contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() {
    mem[96 len -597] = code.data[834 len -597]
    mem[64] = -501
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[237 len 597]
}



// =====================  Runtime code  =====================


array of uint256 greet;
address stor1;

function greet() {
    return greet[0 len greet.length]
}

function kill() {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function _fallback() payable {
    revert
}

function mortal() {
    stor1 = msg.sender
}



}
