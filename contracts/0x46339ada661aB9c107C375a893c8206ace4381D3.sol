contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = 10^6
    require not msg.value
    mem[96 len -912] = code.data[1185 len -912]
    mem[64] = -816
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[273 len 912]
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

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    return 1
}



}
