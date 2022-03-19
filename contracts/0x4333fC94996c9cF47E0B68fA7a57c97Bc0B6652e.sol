contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
mapping of uint256 stor4;

function _fallback() payable {
    mem[96 len -1706] = code.data[2164 len -1706]
    mem[64] = -1610
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    mem[32] = 4
    if mem[96] != 0:
        stor4[address(stor0)] = mem[96]
    else:
        stor4[address(stor0)] = 10^6
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
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor3 = mem[192]
    return code.data[458 len 1706]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor3;
mapping of uint256 balanceOf;
mapping of uint8 frozenAccount;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return uint8(decimals)
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function owner() payable {
    return address(owner)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) payable {
    return uint8(frozenAccount[arg1])
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_98833dce(?) payable {
    require msg.sender == address(owner)
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    uint256(stor3) = arg3 or Mask(248, 8, uint256(stor3))
}

function mintToken(address arg1, uint256 arg2) payable {
    require msg.sender == address(owner)
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function freezeAccount(address arg1, bool arg2) payable {
    require address(owner) == msg.sender
    uint256(frozenAccount[address(arg1)]) = arg2 or Mask(248, 8, uint256(frozenAccount[address(arg1)]))
    emit FrozenFunds(address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    require not uint8(frozenAccount[address(msg.sender)])
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
