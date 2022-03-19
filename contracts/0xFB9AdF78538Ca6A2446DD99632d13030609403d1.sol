contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
mapping of uint256 stor7;

function _fallback() payable {
    mem[96 len -1748] = code.data[2204 len -1748]
    mem[64] = -1652
    if mem[96] != 0:
        if mem[204 len 20] != 0:
            stor2 = mem[192]
            stor7[mem[204 len 20]] = mem[96]
        else:
            stor2 = msg.sender or Mask(96, 160, stor2)
            stor7[address(msg.sender)] = mem[96]
    else:
        if mem[204 len 20] != 0:
            stor2 = mem[192]
            stor7[mem[204 len 20]] = 0
        else:
            stor2 = msg.sender or Mask(96, 160, stor2)
            stor7[address(msg.sender)] = 0
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
    return code.data[456 len 1748]
}



// =====================  Runtime code  =====================


array of uint256 sub_cd93d132;
array of uint256 sub_b7bc2f34;
address sub_c9e696c2Address;
uint256 sub_b41448f8;
array of struct stor4;
uint256 sub_169770a7;
mapping of uint256 balanceOf;
mapping of uint8 frozenAccount;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856477;

function sub_169770a7(?) payable {
    return sub_169770a7
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function sub_b41448f8(?) payable {
    return sub_b41448f8
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
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_76a39356(?) payable {
    require arg1 < stor4.length
    return stor4[arg1].field_0, stor8A35[arg1], stor8A35[arg1]
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

function sub_3cf04676(?) payable {
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = (3 * stor4.length) + 3
        while 3 * stor4.length > idx:
            stor4[idx].field_0 = 0
            stor4[idx].field_256 = 0
            stor4[idx].field_512 = 0
            idx = idx + 1
            continue 
    require stor4.length < stor4.length
    stor4[stor4.length].field_0 = arg1 or Mask(96, 160, stor4[stor4.length].field_0)
    stor4[stor4.length].field_256 = arg2
    return stor4.length
}

function sub_4d46b656(?) payable {
    sub_b41448f8 = arg1
    emit 0x7754e80f: arg1
    s = 0
    idx = sub_169770a7
    s = arg1 - sub_b41448f8
    while idx < stor4.length:
        mem[0] = 4
        if s <= 0:
            s = (3 * idx) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65
            idx = idx + 1
            s = s
            continue 
        if stor8A35[idx] / stor8A35[idx] >= arg1 / 10:
            s = (3 * idx) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65
            idx = idx + 1
            s = s
            continue 
        stor8A35[idx]++
        mem[0] = stor4[idx].field_0
        mem[32] = 7
        balanceOf[stor4[idx].field_0]++
        mem[96] = 1
        emit Transfer(1, 0, stor4[idx].field_0);
        sub_169770a7++
        if stor4.length == sub_169770a7 + 1:
            sub_169770a7 = 0
        if s - 1 != 0:
            s = (3 * idx) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65
            idx = idx + 1
            s = s - 1
            continue 
}



}
