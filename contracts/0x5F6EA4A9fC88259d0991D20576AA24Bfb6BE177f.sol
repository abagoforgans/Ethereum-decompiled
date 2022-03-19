contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of uint256 stor4;

function _fallback() payable {
    mem[96 len -1081] = code.data[1555 len -1081]
    mem[64] = -985
    stor3 = msg.sender or Mask(96, 160, stor3)
    if mem[96]:
        if mem[204 len 20] != 0:
            stor2 = mem[192]
            mem[32] = 4
            stor4[mem[204 len 20]] = mem[96]
        else:
            stor2 = msg.sender or Mask(96, 160, stor2)
            mem[32] = 4
            stor4[address(msg.sender)] = mem[96]
    else:
        if mem[204 len 20] != 0:
            stor2 = mem[192]
            mem[32] = 4
            stor4[mem[204 len 20]] = 0
        else:
            stor2 = msg.sender or Mask(96, 160, stor2)
            mem[32] = 4
            stor4[address(msg.sender)] = 0
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
    return code.data[474 len 1081]
}



// =====================  Runtime code  =====================


array of uint256 sub_cd93d132;
array of uint256 sub_b7bc2f34;
address sub_c9e696c2Address;
address stor3;
mapping of uint256 balanceOf;
mapping of uint8 frozenAccount;

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function frozenAccount(address arg1) payable {
    return uint8(frozenAccount[arg1])
}

function sub_b7bc2f34(?) payable {
    return sub_b7bc2f34[0 len sub_b7bc2f34.length]
}

function sub_c9e696c2(?) payable {
    return sub_c9e696c2Address
}

function sub_cd93d132(?) payable {
    return sub_cd93d132[0 len sub_cd93d132.length]
}

function kill() payable {
    if stor3 != msg.sender:
    selfdestruct(stor3)
}

function _fallback() payable {
  stop
}

function sub_489ffdbc(?) payable {
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function freezeAccount(address arg1, bool arg2) payable {
    require sub_c9e696c2Address == msg.sender
    uint256(frozenAccount[address(arg1)]) = arg2 or Mask(248, 8, uint256(frozenAccount[address(arg1)]))
    emit FrozenFunds(address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require not uint8(frozenAccount[address(msg.sender)])
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
