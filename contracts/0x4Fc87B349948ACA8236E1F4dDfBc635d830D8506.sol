contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;

function _fallback() payable {
    mem[96 len -713] = code.data[1134 len -713]
    mem[64] = -617
    stor3[address(msg.sender)] = mem[96]
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
    stor1[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor2 = mem[160]
    return code.data[421 len 713]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceof;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function balanceof(address arg1) payable {
    return balanceof[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
  stop
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceof[address(msg.sender)] >= arg2
    require arg2 + balanceof[arg1] >= balanceof[arg1]
    balanceof[address(msg.sender)] -= arg2
    balanceof[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
