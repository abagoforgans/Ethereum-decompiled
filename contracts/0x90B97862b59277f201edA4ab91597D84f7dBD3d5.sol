contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() {
    mem[96 len -926] = code.data[1208 len -926]
    mem[64] = -830
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[282 len 926]
}



// =====================  Runtime code  =====================


const getBlockNumber = block.number


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
