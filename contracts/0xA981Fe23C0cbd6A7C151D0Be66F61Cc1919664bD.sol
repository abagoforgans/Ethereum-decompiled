contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;

function _fallback() {
    mem[96 len -916] = code.data[1385 len -916]
    mem[64] = -820
    mem[32] = 0
    stor0[address(msg.sender)] = mem[96]
    mem[0] = 1
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2.length = (2 * mem[mem[192] + 96]) + 1
    s = 0
    idx = mem[192] + 128
    while mem[192] + mem[mem[192] + 96] + 128 > idx:
        stor2[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor2.length + 31 / 32 > Mask(251, 0, mem[mem[192] + 96] + 31) >> 5:
        stor2[Mask(251, 0, mem[mem[192] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[192] + 96] + 31) >> 5) + 1
        while stor2.length + 31 / 32 > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor3 = mem[191 len 1]
    return code.data[469 len 916]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

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
    emit Transfer(arg2, msg.sender, arg1);
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
}



}
