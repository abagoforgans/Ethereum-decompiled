contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1279]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor3;
mapping of uint256 balanceOf;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return uint8(decimals)
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function MyToken(uint256 arg1, string arg2, uint8 arg3, string arg4) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg4.length
    balanceOf[address(msg.sender)] = arg1
    name.length = (2 * arg2.length) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = 128
    while arg2.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg2.length + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (name.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    symbol[] = Array(len=arg4.length, data=arg4[all])
    uint256(stor3) = arg3 or Mask(248, 8, uint256(stor3))
}



}
