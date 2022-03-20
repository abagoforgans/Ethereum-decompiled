contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;
uint256 stor4;
uint8 stor5;
uint256 stor5; offset 8

function _fallback() payable {
    mem[96 len -666] = code.data[1121 len -666]
    mem[64] = -570
    mem[0] = 0
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2 = mem[128]
    stor1.length = (2 * mem[mem[160] + 96]) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor3[address(msg.sender)] = mem[192]
    stor4 = msg.sender or Mask(96, 160, stor4)
    uint8(stor5.field_0) = mem[255 len 1]
    Mask(248, 0, stor5.field_8) = 0
    return code.data[455 len 666]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
address stor4;
uint256 stor5;

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

function transfer(address arg1, uint8 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * stor5 / 10^6)
    balanceOf[stor4] += arg2 * stor5 / 10^6
    emit Transfer(arg2, msg.sender, arg1);
}



}
