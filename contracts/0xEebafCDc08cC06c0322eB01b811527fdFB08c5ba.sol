contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1213]




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;

function name() payable {
    return name[0 len name.length].field_0
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length].field_0
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
    if arg1 != 0:
        balanceOf[address(msg.sender)] = arg1
    else:
        balanceOf[address(msg.sender)] = 10^6
    uint8(name.length) = 18
    Mask(248, 0, name.length.field_8) = 'RadioCoin' / 256
    idx = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    while (name.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    uint8(symbol.length) = 8
    Mask(216, 0, symbol.length.field_8) = 0
    uint32(symbol.length.field_224) = 4036989857
    idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    while (symbol.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    decimals = 0
}



}
