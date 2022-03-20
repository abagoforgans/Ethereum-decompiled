contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;

function _fallback() payable {
    mem[96 len -978] = code.data[1308 len -978]
    mem[64] = -882
    stor2 = msg.sender or Mask(96, 160, stor2)
    if mem[96]:
        if mem[172 len 20] != 0:
            stor1 = mem[160]
            stor3[mem[172 len 20]] = mem[96]
        else:
            stor1 = msg.sender or Mask(96, 160, stor1)
            stor3[address(msg.sender)] = mem[96]
    else:
        if mem[172 len 20] != 0:
            stor1 = mem[160]
            stor3[mem[172 len 20]] = 0
        else:
            stor1 = msg.sender or Mask(96, 160, stor1)
            stor3[address(msg.sender)] = 0
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    return code.data[330 len 978]
}



// =====================  Runtime code  =====================


array of uint256 sub_b7bc2f34;
address sub_c9e696c2Address;
address stor2;
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

function kill() payable {
    if stor2 != msg.sender:
    selfdestruct(stor2)
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
