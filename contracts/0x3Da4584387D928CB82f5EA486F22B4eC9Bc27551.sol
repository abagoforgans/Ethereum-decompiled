contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;

function _fallback() {
    mem[96 len -897] = code.data[1362 len -897]
    mem[64] = -801
    mem[32] = 0
    stor0[address(msg.sender)] = 10000
    mem[0] = 1
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2.length = (2 * mem[mem[128] + 96]) + 1
    s = 0
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor2[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor2.length + 31 / 32 > Mask(251, 0, mem[mem[128] + 96] + 31) >> 5:
        stor2[Mask(251, 0, mem[mem[128] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 1
        while stor2.length + 31 / 32 > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor3 = mem[191 len 1]
    return code.data[465 len 897]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of uint256 coinName;
array of uint256 sub_1e09e3fb;
uint8 decimalUnits;

function decimalUnits() {
    return decimalUnits
}

function sub_1e09e3fb(?) {
    return sub_1e09e3fb[0 len sub_1e09e3fb.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function coinName() {
    return coinName[0 len coinName.length]
}

function _fallback() payable {
    revert 
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
