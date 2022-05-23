contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint128 stor6; offset 168
uint128 stor6; offset 160
address owner;
uint256 sub_7200b526;
uint256 sub_65264604;
uint8 stor9;
uint128 sub_83f9a4c2; offset 8
mapping of struct lockOf;
mapping of struct stor11;
mapping of uint8 stor12;
uint32 sub_c772ac46;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function direct() {
    return bool(stor9)
}

function decimals() {
    return decimals
}

function lockOf(address arg1) {
    return lockOf[address(arg1)].field_0, lockOf[address(arg1)].field_256, lockOf[address(arg1)].field_512
}

function sub_65264604(?) {
    return sub_65264604
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7200b526(?) {
    return sub_7200b526
}

function stopped() {
    return bool(uint8(stor6.field_160))
}

function sub_83f9a4c2(?) {
    return sub_83f9a4c2
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_c772ac46(?) {
    return sub_c772ac46
}

function freezeOf(address arg1) {
    return bool(stor12[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function candy() {
    return bool(uint8(stor6.field_168))
}

function destroyContract() {
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_3d251dd9(?) {
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    stor9 = uint8(arg1)
    emit 0x19250dea: owner, arg1
    return 1
}

function sub_43e781bb(?) {
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    sub_7200b526 = arg1
    emit 0xa48eb68f: owner, arg1
    return 1
}

function sub_44d318a2(?) {
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    sub_83f9a4c2 = arg1
    emit 0x77375751: owner, arg1
    return 1
}

function sub_cb3a10a7(?) {
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    stor12[address(arg1)] = uint8(arg2)
    emit Freeze(owner, arg1);
    return 1
}

function mint(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    balanceOf[address(stor6.field_0)] += arg1
    totalSupply += arg1
    emit Mint(owner, arg1);
    return 1
}

function setOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    if not arg1:
        revert with 0, 'The address invalid'
    owner = arg1
    emit SetOwner(arg1);
    return 1
}

function setStopped(bool arg1) {
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    Mask(96, 0, stor6.field_160) = Mask(96, 0, arg1)
    emit 0xfaaf96b3: owner, bool(uint8(stor6.field_160))
    return 1
}

function approve(address arg1, uint256 arg2) {
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'It doesn't work if you empower yourself'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_5ef75a6d(?) {
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    Mask(88, 0, stor6.field_168) = Mask(88, 0, arg1)
    if uint8(stor6.field_168):
        if arg2:
            sub_c772ac46 = uint32(sub_c772ac46 + 1)
    emit 0x9d9ae110: owner, bool(uint8(stor6.field_168))
    return 1
}

function approve(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'It doesn't work if you empower yourself'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
    return 1
}

function burn(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'Not enough balance'
    if balanceOf[address(arg1)] != arg2:
        balanceOf[address(arg1)] -= arg2
        totalSupply -= arg2
        emit Burn(owner, arg2);
    else:
        balanceOf[address(arg1)] = 0
        totalSupply -= arg2
        emit Burn(owner, balanceOf[address(arg1)]);
    return 1
}

function burn(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    if balanceOf[address(stor6.field_0)] < arg1:
        revert with 0, 'Not enough balance'
    if balanceOf[address(stor6.field_0)] != arg1:
        balanceOf[address(stor6.field_0)] -= arg1
        totalSupply -= arg1
        emit Burn(owner, arg1);
    else:
        balanceOf[address(stor6.field_0)] = 0
        totalSupply -= arg1
        emit Burn(owner, balanceOf[address(stor6.field_0)]);
    return 1
}

function setLock(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    if arg3 <= block.timestamp:
        revert with 0, 'The starting time must be after the current time'
    if arg4 <= arg3:
        revert with 0, 'The end time must be after the beginning time'
    lockOf[address(arg1)].field_0 = arg2
    lockOf[address(arg1)].field_256 = arg3
    lockOf[address(arg1)].field_512 = arg4
    emit Lock(owner, arg3, arg4, arg1, arg2);
    return 1
}

function setName(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    name[] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    emit SetName(owner, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]));
    return 1
}

function setSymbol(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    symbol[] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    emit SetSymbol(owner, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]));
    return 1
}

function transfer(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    if lockOf[address(arg1)].field_0:
        if lockOf[address(arg1)].field_256 <= block.timestamp:
            if lockOf[address(arg1)].field_512 >= block.timestamp:
                if balanceOf[address(arg1)] <= lockOf[address(arg1)].field_0:
                    revert with 0, 'Insufficient available balance'
                if balanceOf[address(arg1)] - lockOf[address(arg1)].field_0 < arg3:
                    revert with 0, 'Insufficient available balance'
    if not arg1:
        revert with 0, 'From address invalid'
    if not arg2:
        revert with 0, 'To address invalid'
    if arg1 == arg2:
        revert with 0, 'It doesn't work if you empower yourself'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'Not enough balance'
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        revert with 0, 'The data has been modified'
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_afc53288(?) payable {
    if not uint8(stor6.field_168):
        revert with 0, 'This function is not enabled'
    require stor11[address(msg.sender)].field_0 != sub_c772ac46
    if stor12[address(msg.sender)]:
        revert with 0, 'The account has been frozen'
    if balanceOf[address(stor6.field_0)] < sub_7200b526:
        revert with 0, 'Not enough balance'
    if not owner:
        revert with 0, 'From address invalid'
    if not msg.sender:
        revert with 0, 'To address invalid'
    if owner == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'It doesn't work if you empower yourself'
    if balanceOf[address(stor6.field_0)] < sub_7200b526:
        revert with 0, 'Not enough balance'
    if balanceOf[address(msg.sender)] + sub_7200b526 <= balanceOf[address(msg.sender)]:
        revert with 0, 'The data has been modified'
    balanceOf[address(stor6.field_0)] -= sub_7200b526
    balanceOf[address(msg.sender)] += sub_7200b526
    require balanceOf[address(stor6.field_0)] + balanceOf[address(msg.sender)] == balanceOf[address(stor6.field_0)] + balanceOf[address(msg.sender)]
    emit Transfer(sub_7200b526, owner, msg.sender);
    emit 0x46f9d2d5: owner, msg.sender, sub_7200b526
    stor11[address(msg.sender)].field_0 = sub_c772ac46
    stor11[address(msg.sender)].field_32 = 0
    sub_65264604 += sub_7200b526
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        revert with 0, 'No operation permission'
    if lockOf[address(arg1)].field_0:
        if lockOf[address(arg1)].field_256 <= block.timestamp:
            if lockOf[address(arg1)].field_512 >= block.timestamp:
                if balanceOf[address(arg1)] <= lockOf[address(arg1)].field_0:
                    revert with 0, 'Insufficient available balance'
                if balanceOf[address(arg1)] - lockOf[address(arg1)].field_0 < arg3:
                    revert with 0, 'Insufficient available balance'
    if arg3 > allowance[address(arg1)][address(arg2)]:
        revert with 0, 'Not enough balance'
    if not arg1:
        revert with 0, 'From address invalid'
    if not arg2:
        revert with 0, 'To address invalid'
    if arg1 == arg2:
        revert with 0, 'It doesn't work if you empower yourself'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'Not enough balance'
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        revert with 0, 'The data has been modified'
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    allowance[address(arg1)][address(arg2)] -= arg3
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor6.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This operation cannot be performed'
    if stor12[address(msg.sender)]:
        revert with 0, 'The account has been frozen'
    if lockOf[address(msg.sender)].field_0:
        if lockOf[address(msg.sender)].field_256 <= block.timestamp:
            if lockOf[address(msg.sender)].field_512 >= block.timestamp:
                if balanceOf[address(msg.sender)] <= lockOf[address(msg.sender)].field_0:
                    revert with 0, 'Insufficient available balance'
                if balanceOf[address(msg.sender)] - lockOf[address(msg.sender)].field_0 < arg2:
                    revert with 0, 'Insufficient available balance'
    if not msg.sender:
        revert with 0, 'From address invalid'
    if not arg1:
        revert with 0, 'To address invalid'
    if msg.sender == arg1:
        revert with 0, 'It doesn't work if you empower yourself'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'Not enough balance'
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        revert with 0, 'The data has been modified'
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_9bfcbd6f(?) payable {
    if not stor9:
        revert with 0, 'This function is not enabled'
    require msg.value > 0
    if stor12[address(msg.sender)]:
        revert with 0, 'The account has been frozen'
    if balanceOf[address(stor6.field_0)] < msg.value * sub_83f9a4c2:
        revert with 0, 'Not enough balance'
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not owner:
        revert with 0, 'From address invalid'
    if not msg.sender:
        revert with 0, 'To address invalid'
    if owner == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'It doesn't work if you empower yourself'
    if balanceOf[address(stor6.field_0)] < msg.value * sub_83f9a4c2:
        revert with 0, 'Not enough balance'
    if balanceOf[address(msg.sender)] + (msg.value * sub_83f9a4c2) <= balanceOf[address(msg.sender)]:
        revert with 0, 'The data has been modified'
    balanceOf[address(stor6.field_0)] += -1 * msg.value * sub_83f9a4c2
    balanceOf[address(msg.sender)] += msg.value * sub_83f9a4c2
    require balanceOf[address(stor6.field_0)] + balanceOf[address(msg.sender)] == balanceOf[address(stor6.field_0)] + balanceOf[address(msg.sender)]
    emit Transfer((msg.value * sub_83f9a4c2), owner, msg.sender);
    emit 0xe6b673ae: owner, msg.sender, msg.value, msg.value * sub_83f9a4c2
    return 1
}

function transferFrom(address arg1, uint256 arg2) {
    if uint8(stor6.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This operation cannot be performed'
    if stor12[address(arg1)]:
        revert with 0, 'The account has been frozen'
    if lockOf[address(arg1)].field_0:
        if lockOf[address(arg1)].field_256 <= block.timestamp:
            if lockOf[address(arg1)].field_512 >= block.timestamp:
                if balanceOf[address(arg1)] <= lockOf[address(arg1)].field_0:
                    revert with 0, 'Insufficient available balance'
                if balanceOf[address(arg1)] - lockOf[address(arg1)].field_0 < arg2:
                    revert with 0, 'Insufficient available balance'
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'Not enough balance'
    if not arg1:
        revert with 0, 'From address invalid'
    if not msg.sender:
        revert with 0, 'To address invalid'
    if arg1 == msg.sender:
        revert with 0, 'It doesn't work if you empower yourself'
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'Not enough balance'
    if balanceOf[address(msg.sender)] + arg2 <= balanceOf[address(msg.sender)]:
        revert with 0, 'The data has been modified'
    balanceOf[address(arg1)] -= arg2
    balanceOf[address(msg.sender)] += arg2
    require balanceOf[address(arg1)] + balanceOf[address(msg.sender)] == balanceOf[address(arg1)] + balanceOf[address(msg.sender)]
    emit Transfer(arg2, arg1, msg.sender);
    allowance[address(arg1)][address(msg.sender)] -= arg2
    return 1
}



}
