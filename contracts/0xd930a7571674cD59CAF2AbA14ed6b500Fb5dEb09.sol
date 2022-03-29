contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
mapping of uint256 stor4;

function _fallback() {
    mem[96 len -1063] = code.data[1525 len -1063]
    mem[64] = -967
    stor4[address(msg.sender)] = mem[96]
    stor3 = mem[96]
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
    stor1.length = (2 * mem[mem[192] + 96]) + 1
    s = 0
    idx = mem[192] + 128
    while mem[192] + mem[mem[192] + 96] + 128 > idx:
        stor1[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor1.length + 31 / 32 > Mask(251, 0, mem[mem[192] + 96] + 31) >> 5:
        stor1[Mask(251, 0, mem[mem[192] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[192] + 96] + 31) >> 5) + 1
        while stor1.length + 31 / 32 > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor2 = mem[191 len 1]
    return code.data[462 len 1063]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
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
