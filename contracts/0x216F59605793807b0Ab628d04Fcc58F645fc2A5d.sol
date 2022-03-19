contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1237]




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor3;

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

function _fallback() payable {
  stop
}

function sub_9287b654(?) payable {
    balanceOf[address(msg.sender)] = 21 * 10^6
}

function MyToken(uint256 arg1) payable {
    balanceOf[address(msg.sender)] = arg1
}

function transfer(address arg1, uint256 arg2) payable {
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sub_e6a55699(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg4.length
    if arg1 != 0:
        balanceOf[address(msg.sender)] = arg1
    else:
        balanceOf[address(msg.sender)] = 10^6
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
