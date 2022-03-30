contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
address stor3; offset 8

function _fallback() {
    mem[96 len -1013] = code.data[1505 len -1013]
    mem[64] = -917
    mem[32] = 0
    stor0[address(msg.sender)] = mem[96]
    mem[0] = 1
    stor1.length = (2 * mem[mem[128] + 96]) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor2.length = (2 * mem[mem[224] + 96]) + 1
    s = 0
    idx = mem[224] + 128
    while mem[224] + mem[mem[224] + 96] + 128 > idx:
        stor2[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor2.length + 31 / 32 > Mask(251, 0, mem[mem[224] + 96] + 31) >> 5:
        stor2[Mask(251, 0, mem[mem[224] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[224] + 96] + 31) >> 5) + 1
        while stor2.length + 31 / 32 > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    uint8(stor3.field_0) = mem[223 len 1]
    address(stor3.field_8) = mem[172 len 20]
    return code.data[492 len 1013]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor3;
address stor3; offset 8

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

function transfer(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(stor3.field_0)] + arg1 >= balanceOf[address(stor3.field_0)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[address(stor3.field_8)] += arg1
    emit Transfer(arg1, msg.sender, address(stor3.field_8));
}



}
