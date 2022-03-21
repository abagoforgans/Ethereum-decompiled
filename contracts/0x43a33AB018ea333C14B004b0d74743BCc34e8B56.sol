contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;

function _fallback() payable {
    mem[96 len -1387] = code.data[1958 len -1387]
    mem[64] = -1291
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor0 = msg.sender or Mask(96, 160, stor0)
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
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor4 = mem[192]
    return code.data[571 len 1387]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 name;
array of uint256 symbol;
array of uint256 sub_b30c9d94;
uint8 decimals;
uint256 stor5;
mapping of uint256 balanceOf;
array of uint8 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
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

function sub_b30c9d94(?) payable {
    return sub_b30c9d94[0 len sub_b30c9d94.length]
}

function _fallback() payable {
  stop
}

function updateBalance(address arg1, uint256 arg2) payable {
    require address(owner) == msg.sender
    balanceOf[address(arg1)] = arg2
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_b7030291(?) payable {
    require arg1 < stor5
    return address(stor36B6[arg1]), uint8(stor36B6[arg1]), uint8(stor36B6[arg1]), stor36B6[arg1]
}

function sub_9951d62f(?) payable {
    require address(owner) == msg.sender
    require stor5 + 1 < stor5
    uint256(stor36B6[stor5 + 1]) = arg1 or Mask(96, 160, uint256(stor36B6[stor5 + 1]))
    stor36B6[stor5 + 1] = arg2
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
