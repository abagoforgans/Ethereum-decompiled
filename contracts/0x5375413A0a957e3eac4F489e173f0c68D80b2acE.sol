contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;
address stor2;
mapping of uint256 stor3;

function _fallback() payable {
    stor1 = 10^6
    require not msg.value
    mem[96 len -659] = code.data[957 len -659]
    mem[64] = -563
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2 = msg.sender
    stor3[address(msg.sender)] = stor1
    return code.data[298 len 659]
}



// =====================  Runtime code  =====================


const decimals = 18


address owner;
mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function smart() {
    owner = msg.sender
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
