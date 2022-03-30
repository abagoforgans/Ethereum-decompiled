contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
mapping of uint256 stor2;

function _fallback() {
    mem[96 len -915] = code.data[1349 len -915]
    mem[64] = -819
    mem[32] = 2
    stor2[address(msg.sender)] = mem[96]
    mem[0] = 0
    stor0.length = (2 * mem[mem[128] + 96]) + 1
    s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    while (stor0.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor1.length = (2 * mem[mem[160] + 96]) + 1
    s = 0
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor1[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor1.length + 31 / 32 > Mask(251, 0, mem[mem[160] + 96] + 31) >> 5:
        stor1[Mask(251, 0, mem[mem[160] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) + 1
        while stor1.length + 31 / 32 > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    return code.data[434 len 915]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() {
    revert 
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
}



}
