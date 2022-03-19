contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1226]




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor2;
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

function _fallback() payable {
  stop
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function MyToken(uint256 arg1, string arg2, string arg3, uint8 arg4) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    if arg1 != 0:
        balanceOf[address(msg.sender)] = arg1
    else:
        balanceOf[address(msg.sender)] = 10^6
    name.length = (2 * arg2.length) + 1
    s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    idx = 128
    while arg2.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg2.length + 31) >> 5) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    while (name.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    symbol[] = Array(len=arg3.length, data=arg3[all])
    uint256(stor2) = arg4 or Mask(248, 8, uint256(stor2))
}



}
