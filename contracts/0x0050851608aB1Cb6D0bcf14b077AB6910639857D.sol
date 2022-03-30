contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
mapping of uint256 stor3;

function _fallback() {
    mem[96 len -1006] = code.data[1431 len -1006]
    mem[64] = -910
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1.length = (2 * mem[mem[128] + 96]) + 1
    s = 0
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor1[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor1.length + 31 / 32 > Mask(251, 0, mem[mem[128] + 96] + 31) >> 5:
        stor1[Mask(251, 0, mem[mem[128] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 1
        while stor1.length + 31 / 32 > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor3[address(msg.sender)] = mem[192]
    return code.data[425 len 1006]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
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
