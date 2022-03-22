contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
mapping of uint256 stor5;

function _fallback() payable {
    mem[96 len -1102] = code.data[1603 len -1102]
    mem[64] = -1006
    stor4 = msg.sender or Mask(96, 160, stor4)
    if mem[96]:
        if mem[204 len 20] != 0:
            stor3 = mem[192]
            stor5[mem[204 len 20]] = mem[96]
        else:
            stor3 = msg.sender or Mask(96, 160, stor3)
            stor5[address(msg.sender)] = mem[96]
    else:
        if mem[204 len 20] != 0:
            stor3 = mem[192]
            stor5[mem[204 len 20]] = 0
        else:
            stor3 = msg.sender or Mask(96, 160, stor3)
            stor5[address(msg.sender)] = 0
    stor2.length = (2 * mem[mem[128] + 96]) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor0[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor1 = mem[224]
    return code.data[501 len 1102]
}



// =====================  Runtime code  =====================


array of uint256 symbol;
uint8 decimals;
array of uint256 name;
address sub_c9e696c2Address;
address stor4;
mapping of uint256 balanceOf;
mapping of uint8 frozenAccount;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) payable {
    return uint8(frozenAccount[arg1])
}

function sub_c9e696c2(?) payable {
    return sub_c9e696c2Address
}

function kill() payable {
    if stor4 != msg.sender:
    selfdestruct(stor4)
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
