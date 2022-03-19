contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[96 len -624] = code.data[885 len -624]
    mem[64] = -528
    mem[0] = msg.sender
    mem[32] = 0
    stor0[address(msg.sender)] = 1
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
    return code.data[261 len 624]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of uint256 name;
uint8 decimals;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function _fallback() payable {
  stop
}

function transfer(address arg1, uint8 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit 0x2c4d9d10: arg2, msg.sender, arg1
}



}
