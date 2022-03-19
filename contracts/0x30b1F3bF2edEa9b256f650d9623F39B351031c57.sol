contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
mapping of uint256 stor4;

function _fallback() payable {
    mem[96 len -1168] = code.data[1624 len -1168]
    mem[64] = -1072
    if mem[96] != 0:
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
    return code.data[456 len 1168]
}



// =====================  Runtime code  =====================


array of uint256 sub_cd93d132;
array of uint256 sub_d417b368;
address sub_c9e696c2Address;
uint256 sub_12c89cae;
mapping of uint256 balanceOf;
mapping of uint8 frozenAccount;

function sub_12c89cae(?) payable {
    return sub_12c89cae
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function frozenAccount(address arg1) payable {
    return uint8(frozenAccount[arg1])
}

function sub_c9e696c2(?) payable {
    return sub_c9e696c2Address
}

function sub_cd93d132(?) payable {
    return sub_cd93d132[0 len sub_cd93d132.length]
}

function sub_d417b368(?) payable {
    return sub_d417b368[0 len sub_d417b368.length]
}

function kill() payable {
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_4d46b656(?) payable {
    sub_12c89cae = arg1
    emit 0x2e28e8ff: arg1
}

function mintToken(address arg1, uint256 arg2) payable {
    require sub_c9e696c2Address == msg.sender
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
