contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor3;

function _fallback() {
    mem[96 len -416] = code.data[756 len -416]
    mem[64] = -320
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor2 = mem[223 len 1]
    if mem[96] > 0:
        stor3[address(msg.sender)] = mem[96]
    else:
        stor3[address(msg.sender)] = 10^6
    return code.data[340 len 416]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] > arg2:
        if arg2 > 0:
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[arg1] += arg2
            emit Transfer(arg2, msg.sender, arg1);
}



}
