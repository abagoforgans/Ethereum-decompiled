contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint128 stor2; offset 160
uint256 stor2;
mapping of uint256 stor3;

function _fallback() payable {
    mem[96 len -881] = code.data[1371 len -881]
    mem[64] = -785
    mem[32] = 3
    if mem[96] != 0:
        stor3[address(msg.sender)] = mem[96]
    else:
        stor3[address(msg.sender)] = 10^6
    uint256(stor2.field_0) = msg.sender or Mask(96, 160, uint256(stor2.field_0))
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
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    Mask(96, 0, stor2.field_160) = mem[212 len 12]
    return code.data[490 len 881]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals; offset 160
address stor2;
mapping of uint256 balanceOf;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
  stop
}

function create(address arg1, uint256 arg2) payable {
    require msg.sender == stor2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
