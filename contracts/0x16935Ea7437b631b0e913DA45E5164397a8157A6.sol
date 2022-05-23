contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
array of uint256 price;
array of uint256 version;
uint256 stor6;
mapping of uint256 balanceOf;
mapping of uint256 stor8;
mapping of uint256 stor9;
address stor10;
array of uint256 STC;
array of uint256 ETC;
array of uint256 SC;
array of struct stor14;
array of struct stor15;
address stor16;
uint256 stor17;
uint256 stor18;
mapping of uint256 sub_534a4afa;
mapping of uint256 stor21;
mapping of uint256 sub_c3aead26;
mapping of address participants;
array of uint256 sub_a7faee65;
mapping of bool sub_9a596df2;
mapping of bool sub_46f6f420;
uint256 stor27;
array of uint256 stor28;
mapping of uint8 stor29;
mapping of uint8 stor30;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function participants(uint256 arg1) {
    return participants[arg1]
}

function sub_46f6f420(?) {
    return uint256(sub_46f6f420[arg1][0 len sub_46f6f420[arg1].length])
}

function sub_534a4afa(?) {
    return sub_534a4afa[arg1]
}

function STC() {
    return STC[0 len STC.length]
}

function version() {
    return version[0 len version.length]
}

function SC() {
    return SC[0 len SC.length]
}

function sub_6e8d76fd(?) {
    return bool(stor30[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9a596df2(?) {
    return uint256(sub_9a596df2[arg1][0 len sub_9a596df2[arg1].length])
}

function price() {
    return price[0 len price.length]
}

function sub_a7faee65(?) {
    return sub_a7faee65[arg1][0 len sub_a7faee65[arg1].length]
}

function frozenAccount(address arg1) {
    return bool(stor29[arg1])
}

function sub_c3aead26(?) {
    return sub_c3aead26[arg1]
}

function ETC() {
    return ETC[0 len ETC.length]
}

function killContract() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_7d980cd5(?) {
    require msg.sender == owner
    stor10 = arg1
}

function sub_d4e435bc(?) {
    require msg.sender == owner
    stor21[address(arg1)] = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_333e607a(?) {
    require msg.sender == owner
    sub_c3aead26[address(arg1)] = arg2
}

function sub_d0bba16b(?) {
    require msg.sender == owner
    sub_534a4afa[address(arg1)] = arg2
}

function sub_56686db2(?) {
    require msg.sender == owner
    SC[] = Array(len=arg1.length, data=arg1[all])
}

function sub_27dbcd6e(?) {
    require msg.sender == owner
    STC[] = Array(len=arg1.length, data=arg1[all])
}

function sub_c9c4025c(?) {
    require msg.sender == owner
    ETC[] = Array(len=arg1.length, data=arg1[all])
}

function sub_4fce5627(?) {
    if 1 >= stor18:
        return 0
    stor16 = participants[1]
    return stor16
}

function sub_e6b94edd(?) {
    require msg.sender == owner
    price[] = Array(len=arg1.length, data=arg1[all])
}

function sub_f52b72ad(?) {
    require msg.sender == owner
    stor6 += arg1
    emit Transfer(arg1, 0, this.address);
}

function approve(address arg1, uint256 arg2) {
    require msg.sender == owner
    stor8[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function sub_59557aaa(?) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    stor6 += arg2
    emit Transfer(arg2, this.address, arg1);
}

function sub_c0b53119(?) {
    require msg.sender == owner
    if arg1 == stor10:
        stor27 = arg2
        stor28[] = Array(len=arg3.length, data=arg3[all])
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor29[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function sub_5d8ccde6(?) {
    require msg.sender == owner
    if arg1 == stor10:
        uint256(sub_46f6f420[arg2][]) = Array(len=arg3.length, data=arg3[all])
        stor17++
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    stor6 -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= stor8[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    stor8[address(arg1)][address(msg.sender)] -= arg2
    stor6 -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= stor8[address(arg1)][address(msg.sender)]
    stor8[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_f0ad048a(?) {
    require msg.sender == owner
    stor9[address(arg1)] = arg2
    stor18++
    participants[stor18] = arg1
    if 31 >= sub_46f6f420[stor18].length:
        uint256(sub_9a596df2[address(arg1)]) = uint256(sub_46f6f420[stor18])
        idx = 0
        while sub_9a596df2[address(arg1)].length + 31 / 32 > idx:
            uint256(sub_9a596df2[address(arg1)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        uint256(sub_9a596df2[address(arg1)]) = Mask(255, 1, (256 * not bool(sub_46f6f420[stor18])) - 1 and uint256(sub_46f6f420[stor18])) + 1
        if not Mask(255, 1, (256 * not bool(sub_46f6f420[stor18])) - 1 and uint256(sub_46f6f420[stor18])):
            idx = 0
            while sub_9a596df2[address(arg1)].length + 31 / 32 > idx:
                uint256(sub_9a596df2[address(arg1)][idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while sub_46f6f420[stor18].length + 31 / 32 > idx:
                uint256(sub_9a596df2[address(arg1)][s]) = uint256(sub_46f6f420[stor18][idx])
                s = s + 1
                idx = idx + 1
                continue 
            idx = sub_46f6f420[stor18].length + 31 / 32
            while sub_9a596df2[address(arg1)].length + 31 / 32 > idx:
                uint256(sub_9a596df2[address(arg1)][idx]) = 0
                idx = idx + 1
                continue 
}

function sub_8f86948a(?) {
    if arg1 != stor10:
        return ' '
    if 1 >= stor17:
        return ' '
    if 31 >= sub_46f6f420[1].length:
        stor15.length = uint256(sub_46f6f420[1])
        idx = 0
        while stor15.length + 31 / 32 > idx:
            stor15[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor15.length = Mask(255, 1, (256 * not bool(sub_46f6f420[1])) - 1 and uint256(sub_46f6f420[1])) + 1
        if not Mask(255, 1, (256 * not bool(sub_46f6f420[1])) - 1 and uint256(sub_46f6f420[1])):
            idx = 0
            while stor15.length + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while sub_46f6f420[1].length + 31 / 32 > idx:
                stor15[s].field_0 = uint256(sub_46f6f420[1][idx])
                s = s + 1
                idx = idx + 1
                continue 
            idx = sub_46f6f420[1].length + 31 / 32
            while stor15.length + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[128] = uint256(stor15.field_0)
    idx = 128
    s = 0
    while stor15.length + 96 > idx:
        mem[idx + 32] = stor15[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor15.length, data=mem[128 len stor15.length])
}

function sub_8db5b0b6(?) {
    if arg1 != stor10:
        return ' '
    if 31 >= sub_46f6f420[stor27].length:
        stor15.length = uint256(sub_46f6f420[stor27])
        idx = 0
        while stor15.length + 31 / 32 > idx:
            stor15[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor15.length = Mask(255, 1, (256 * not bool(sub_46f6f420[stor27])) - 1 and uint256(sub_46f6f420[stor27])) + 1
        if not Mask(255, 1, (256 * not bool(sub_46f6f420[stor27])) - 1 and uint256(sub_46f6f420[stor27])):
            idx = 0
            while stor15.length + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while sub_46f6f420[stor27].length + 31 / 32 > idx:
                stor15[s].field_0 = uint256(sub_46f6f420[stor27][idx])
                s = s + 1
                idx = idx + 1
                continue 
            idx = sub_46f6f420[stor27].length + 31 / 32
            while stor15.length + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[128] = uint256(stor15.field_0)
    idx = 128
    s = 0
    while stor15.length + 96 > idx:
        mem[idx + 32] = stor15[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor15.length, data=mem[128 len stor15.length])
}

function sub_278a5ff2(?) {
    if 31 >= sub_9a596df2[address(arg1)].length:
        stor14.length = uint256(sub_9a596df2[address(arg1)])
        idx = 0
        while stor14.length + 31 / 32 > idx:
            stor14[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor14.length = Mask(255, 1, (256 * not bool(sub_9a596df2[address(arg1)])) - 1 and uint256(sub_9a596df2[address(arg1)])) + 1
        if not Mask(255, 1, (256 * not bool(sub_9a596df2[address(arg1)])) - 1 and uint256(sub_9a596df2[address(arg1)])):
            idx = 0
            while stor14.length + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while sub_9a596df2[address(arg1)].length + 31 / 32 > idx:
                stor14[s].field_0 = uint256(sub_9a596df2[address(arg1)][idx])
                s = s + 1
                idx = idx + 1
                continue 
            idx = sub_9a596df2[address(arg1)].length + 31 / 32
            while stor14.length + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[128] = uint256(stor14.field_0)
    idx = 128
    s = 0
    while stor14.length + 96 > idx:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor14.length, data=mem[128 len stor14.length])
}



}
