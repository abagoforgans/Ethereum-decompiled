contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() {
    mem[96 len -726] = code.data[961 len -726]
    mem[64] = -630
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[235 len 726]
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

function setGreeting(string arg1) {
    greet[] = Array(len=arg1.length, data=arg1[all])
}



}
