contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = 10^6
    require not msg.value
    mem[96 len -697] = code.data[970 len -697]
    mem[64] = -601
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[273 len 697]
}



// =====================  Runtime code  =====================


const decimals = 18


address stor0;
array of uint256 greet;
address owner;
mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

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
