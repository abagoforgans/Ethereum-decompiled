contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
array of uint256 stor3;
mapping of uint256 stor4;

function _fallback() payable {
    mem[96 len -862] = code.data[1339 len -862]
    mem[64] = -766
    stor0 = mem[96]
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
    stor2 = mem[160]
    stor3.length = (2 * mem[mem[192] + 96]) + 1
    s = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    idx = mem[192] + 128
    while mem[192] + mem[mem[192] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[192] + 96] + 31) >> 5) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
    while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor4[address(msg.sender)] = mem[96]
    return code.data[477 len 862]
}



// =====================  Runtime code  =====================


uint32 totalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
mapping of uint32 balanceOf;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    return uint32(balanceOf[arg1])
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert 
}

function transfer(address arg1, uint32 arg2) payable {
    require uint32(balanceOf[address(msg.sender)]) >= arg2
    require uint32(arg2 + uint32(balanceOf[arg1])) >= uint32(balanceOf[arg1])
    uint256(balanceOf[address(arg1)]) = uint32(balanceOf[address(arg1)]) + arg2 or Mask(224, 32, uint256(balanceOf[address(arg1)]))
    uint256(balanceOf[address(msg.sender)]) = uint32(balanceOf[address(msg.sender)]) - arg2 or Mask(224, 32, uint256(balanceOf[address(msg.sender)]))
    emit Transfer(arg2, msg.sender, arg1);
}



}
