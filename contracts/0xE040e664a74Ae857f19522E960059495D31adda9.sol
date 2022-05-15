contract main {




// =====================  Runtime code  =====================


uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
mapping of struct itemAmountOf;
uint256 itemId;
mapping of struct itemAllowanceAmount;
uint8 stor12;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function getItemAllowanceAmount(uint256 arg1, address arg2, address arg3) {
    require not stor12
    require not uint8(stor1.field_160)
    return itemAllowanceAmount[address(arg2)][address(arg3)][arg1].field_0
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function getItemAmountOf(uint256 arg1, address arg2) {
    require not stor12
    require not uint8(stor1.field_160)
    return itemAmountOf[arg1][2][address(arg2)].field_0
}

function getItemAllowancePrice(uint256 arg1, address arg2, address arg3) {
    require not stor12
    require not uint8(stor1.field_160)
    return itemAllowanceAmount[address(arg2)][address(arg3)][arg1].field_256
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor8[arg1])
}

function itemId() {
    return itemId
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function allowanceItems(address arg1, address arg2, uint256 arg3) {
    return itemAllowanceAmount[arg1][arg2][arg3].field_0, itemAllowanceAmount[arg1][arg2][arg3].field_256
}

function isItemStopped() {
    return bool(stor12)
}

function _fallback() payable {
  stop
}

function isFrozenAccount(address arg1) {
    return (bool(stor8[address(arg1)]) == 1)
}

function setPauseStatus(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
    return 1
}

function setItemStoppedStatus(bool arg1) {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    stor12 = uint8(arg1)
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setItemTransferable(uint256 arg1, bool arg2) {
    require not stor8[address(msg.sender)]
    require not stor12
    require not uint8(stor1.field_160)
    require itemAmountOf[arg1].field_256 == msg.sender
    itemAmountOf[arg1].field_1536 = uint8(arg2)
    return 1
}

function setItemApproveForAll(uint256 arg1, bool arg2) {
    require not stor8[address(msg.sender)]
    require not stor12
    require not uint8(stor1.field_160)
    require itemAmountOf[arg1].field_256 == msg.sender
    itemAmountOf[arg1].field_1544 = Mask(248, 0, arg2)
    return 1
}

function setItemPrice(uint256 arg1, uint256 arg2) {
    require not stor8[address(msg.sender)]
    require not stor12
    require not uint8(stor1.field_160)
    require itemAmountOf[arg1].field_256 == msg.sender
    require arg2 >= 0
    itemAmountOf[arg1].field_1024 = arg2
    return 1
}

function setItemLimitHolding(uint256 arg1, uint256 arg2) {
    require not stor8[address(msg.sender)]
    require not stor12
    require not uint8(stor1.field_160)
    require itemAmountOf[arg1].field_256 == msg.sender
    require arg2 > 0
    itemAmountOf[arg1].field_2048 = arg2
    return 1
}

function setItemOption(uint256 arg1, string arg2) {
    require not stor8[address(msg.sender)]
    require not stor12
    require not uint8(stor1.field_160)
    require itemAmountOf[arg1].field_256 == msg.sender
    itemAmountOf[arg1][7][].field_0 = Array(len=arg2.length, data=arg2[all])
    return 1
}

function burn(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require arg2 > 0
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function allowanceItem(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) {
    require not stor8[address(msg.sender)]
    require not stor12
    require not uint8(stor1.field_160)
    require arg2 > 0
    require arg3 >= 0
    require arg4
    require itemAmountOf[arg1][2][address(msg.sender)].field_0 >= arg2
    require itemAmountOf[arg1].field_1536
    itemAllowanceAmount[address(msg.sender)][address(arg4)][arg1].field_0 = arg2
    itemAllowanceAmount[address(msg.sender)][address(arg4)][arg1].field_256 = arg3
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor1.field_160)
    require arg2
    require arg3 > 0
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require not stor8[address(arg1)]
    require not stor8[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function freezeAccounts(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require arg1.length > 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        stor8[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        _27 = mem[(32 * idx) + 128]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        mem[(32 * arg1.length) + 128] = balanceOf[mem[(32 * idx) + 140 len 20]]
        emit Freeze(mem[(32 * arg1.length) + 128], address(_27));
        idx = idx + 1
        continue 
    return 1
}

function unfreezeAccounts(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require arg1.length > 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        stor8[mem[(32 * idx) + 140 len 20]] = 0
        require idx < arg1.length
        _27 = mem[(32 * idx) + 128]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        mem[(32 * arg1.length) + 128] = balanceOf[mem[(32 * idx) + 140 len 20]]
        emit Unfreeze(mem[(32 * arg1.length) + 128], address(_27));
        idx = idx + 1
        continue 
    return 1
}

function createItem(string arg1, uint256 arg2, uint256 arg3, bool arg4, bool arg5, string arg6, uint256 arg7) {
    require not stor8[address(msg.sender)]
    require not stor12
    require not uint8(stor1.field_160)
    itemId++
    itemAmountOf[stor10].field_0 = itemId
    itemAmountOf[stor10].field_256 = msg.sender
    itemAmountOf[stor10][3][].field_0 = Array(len=arg1.length, data=arg1[all])
    itemAmountOf[stor10].field_1024 = arg3
    itemAmountOf[stor10].field_1280 = arg2
    itemAmountOf[stor10].field_1536 = uint8(arg4)
    itemAmountOf[stor10].field_1544 = Mask(248, 0, arg5)
    itemAmountOf[stor10][7][].field_0 = Array(len=arg6.length, data=arg6[all])
    itemAmountOf[stor10].field_2048 = arg7
    itemAmountOf[stor10][2][address(msg.sender)].field_0 = arg2
    return itemId
}

function transferItem(uint256 arg1, address arg2, uint256 arg3) {
    require not stor8[address(msg.sender)]
    require not stor12
    require not uint8(stor1.field_160)
    require not stor8[address(arg2)]
    require arg2
    require arg3 > 0
    require itemAmountOf[arg1][2][address(msg.sender)].field_0 >= arg3
    require itemAmountOf[arg1].field_1536
    require itemAmountOf[arg1][2][address(arg2)].field_0 + arg3 >= itemAmountOf[arg1][2][address(arg2)].field_0
    require itemAmountOf[arg1].field_2048 >= itemAmountOf[arg1][2][address(arg2)].field_0 + arg3
    require arg3 <= itemAmountOf[arg1][2][address(msg.sender)].field_0
    itemAmountOf[arg1][2][address(msg.sender)].field_0 -= arg3
    require itemAmountOf[arg1][2][address(arg2)].field_0 + arg3 >= itemAmountOf[arg1][2][address(arg2)].field_0
    itemAmountOf[arg1][2][address(arg2)].field_0 += arg3
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require not stor8[address(msg.sender)]
    require not uint8(stor1.field_160)
    require arg2 > 0
    require not stor8[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 196] = 96
        mem[ceil32(arg3.length) + 228] = arg3.length
        mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]));
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function buyItem(uint256 arg1, uint256 arg2) {
    require not stor8[address(msg.sender)]
    require not stor12
    require not uint8(stor1.field_160)
    require itemAmountOf[arg1].field_1544
    require arg2 > 0
    require itemAmountOf[arg1][2][itemAmountOf[arg1].field_256].field_0 >= arg2
    require itemAmountOf[arg1][2][address(msg.sender)].field_0 + arg2 >= itemAmountOf[arg1][2][address(msg.sender)].field_0
    require itemAmountOf[arg1].field_2048 >= itemAmountOf[arg1][2][address(msg.sender)].field_0 + arg2
    if not itemAmountOf[arg1].field_1024:
        require balanceOf[address(msg.sender)] >= 0
        require 0 <= balanceOf[address(msg.sender)]
        require arg2 <= itemAmountOf[arg1][2][itemAmountOf[arg1].field_256].field_0
        itemAmountOf[arg1][2][itemAmountOf[arg1].field_256].field_0 -= arg2
        require itemAmountOf[arg1][2][address(msg.sender)].field_0 + arg2 >= itemAmountOf[arg1][2][address(msg.sender)].field_0
        itemAmountOf[arg1][2][address(msg.sender)].field_0 += arg2
        require balanceOf[stor9[arg1].field_256] >= balanceOf[stor9[arg1].field_256]
        return 1
    require itemAmountOf[arg1].field_1024
    require itemAmountOf[arg1].field_1024 * arg2 / itemAmountOf[arg1].field_1024 == arg2
    require balanceOf[address(msg.sender)] >= itemAmountOf[arg1].field_1024 * arg2
    require itemAmountOf[arg1].field_1024 * arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * itemAmountOf[arg1].field_1024 * arg2
    require arg2 <= itemAmountOf[arg1][2][itemAmountOf[arg1].field_256].field_0
    itemAmountOf[arg1][2][itemAmountOf[arg1].field_256].field_0 -= arg2
    require itemAmountOf[arg1][2][address(msg.sender)].field_0 + arg2 >= itemAmountOf[arg1][2][address(msg.sender)].field_0
    itemAmountOf[arg1][2][address(msg.sender)].field_0 += arg2
    require balanceOf[stor9[arg1].field_256] + (itemAmountOf[arg1].field_1024 * arg2) >= balanceOf[stor9[arg1].field_256]
    balanceOf[stor9[arg1].field_256] += itemAmountOf[arg1].field_1024 * arg2
    return 1
}

function rain(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require not stor8[address(msg.sender)]
    require not uint8(stor1.field_160)
    require arg2 > 0
    require arg1.length > 0
    if not arg2:
        require balanceOf[address(msg.sender)] >= 0
        require 0 <= balanceOf[address(msg.sender)]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20]
            require idx < arg1.length
            require balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < arg1.length
            _76 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = arg2
            emit Transfer(arg2, msg.sender, address(_76));
            idx = idx + 1
            continue 
        emit Rain(0, msg.sender);
    else:
        require arg2
        require arg2 * arg1.length / arg2 == arg1.length
        require balanceOf[address(msg.sender)] >= arg2 * arg1.length
        require arg2 * arg1.length <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += -1 * arg2 * arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20]
            require idx < arg1.length
            require balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < arg1.length
            _73 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = arg2
            emit Transfer(arg2, msg.sender, address(_73));
            idx = idx + 1
            continue 
        emit Rain((arg2 * arg1.length), msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require not stor8[address(msg.sender)]
    require not uint8(stor1.field_160)
    require arg2 > 0
    require not stor8[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
        _13 = mem[96]
        mem[96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[floor32(mem[96]) + -(mem[96] % 32) + 128 len mem[96] % 32] = mem[-(mem[96] % 32) + floor32(mem[96]) + 160 len mem[96] % 32]
        emit Transfer(arg2, msg.sender, arg1, sha3(mem[96 len _13]));
    else:
        mem[96] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = arg2
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len floor32(0, Mask(224, 32, msg.sender) >> 32)] = mem[128 len floor32(0, Mask(224, 32, msg.sender) >> 32)]
        mem[floor32(0, Mask(224, 32, msg.sender) >> 32) + -(Mask(5, 32, msg.sender) >> 32) + 128 len Mask(5, 32, msg.sender) >> 32] = mem[-(Mask(5, 32, msg.sender) >> 32) + floor32(0, Mask(224, 32, msg.sender) >> 32) + 160 len Mask(5, 32, msg.sender) >> 32]
        emit Transfer(arg2, msg.sender, arg1, sha3(0, msg.sender, arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]));
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferItemFrom(uint256 arg1, address arg2, uint256 arg3, uint256 arg4) {
    require not stor8[address(msg.sender)]
    require not stor12
    require not uint8(stor1.field_160)
    require arg3 > 0
    require arg4 >= 0
    require not stor8[address(arg2)]
    if not arg3:
        require itemAllowanceAmount[address(arg2)][address(msg.sender)][arg1].field_0 >= arg3
        require itemAllowanceAmount[address(arg2)][address(msg.sender)][arg1].field_256 >= arg4
        require balanceOf[address(msg.sender)] >= 0
        require itemAmountOf[arg1][2][address(arg2)].field_0 >= arg3
        require itemAmountOf[arg1].field_1536
        require itemAmountOf[arg1][2][address(msg.sender)].field_0 + arg3 >= itemAmountOf[arg1][2][address(msg.sender)].field_0
        require itemAmountOf[arg1].field_2048 >= itemAmountOf[arg1][2][address(msg.sender)].field_0 + arg3
        require 0 <= balanceOf[address(msg.sender)]
        require arg3 <= itemAllowanceAmount[address(arg2)][address(msg.sender)][arg1].field_0
        itemAllowanceAmount[address(arg2)][address(msg.sender)][arg1].field_0 -= arg3
        require arg3 <= itemAmountOf[arg1][2][address(arg2)].field_0
        itemAmountOf[arg1][2][address(arg2)].field_0 -= arg3
        require itemAmountOf[arg1][2][address(msg.sender)].field_0 + arg3 >= itemAmountOf[arg1][2][address(msg.sender)].field_0
        itemAmountOf[arg1][2][address(msg.sender)].field_0 += arg3
        require balanceOf[address(arg2)] >= balanceOf[address(arg2)]
        return 1
    require arg3
    require arg3 * arg4 / arg3 == arg4
    require itemAllowanceAmount[address(arg2)][address(msg.sender)][arg1].field_0 >= arg3
    require itemAllowanceAmount[address(arg2)][address(msg.sender)][arg1].field_256 >= arg4
    require balanceOf[address(msg.sender)] >= arg3 * arg4
    require itemAmountOf[arg1][2][address(arg2)].field_0 >= arg3
    require itemAmountOf[arg1].field_1536
    require itemAmountOf[arg1][2][address(msg.sender)].field_0 + arg3 >= itemAmountOf[arg1][2][address(msg.sender)].field_0
    require itemAmountOf[arg1].field_2048 >= itemAmountOf[arg1][2][address(msg.sender)].field_0 + arg3
    require arg3 * arg4 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * arg3 * arg4
    require arg3 <= itemAllowanceAmount[address(arg2)][address(msg.sender)][arg1].field_0
    itemAllowanceAmount[address(arg2)][address(msg.sender)][arg1].field_0 -= arg3
    require arg3 <= itemAmountOf[arg1][2][address(arg2)].field_0
    itemAmountOf[arg1][2][address(arg2)].field_0 -= arg3
    require itemAmountOf[arg1][2][address(msg.sender)].field_0 + arg3 >= itemAmountOf[arg1][2][address(msg.sender)].field_0
    itemAmountOf[arg1][2][address(msg.sender)].field_0 += arg3
    require balanceOf[address(arg2)] + (arg3 * arg4) >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3 * arg4
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3, string arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require not stor8[address(msg.sender)]
    require not uint8(stor1.field_160)
    require arg2 > 0
    require not stor8[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    else:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32] = mem[ceil32(arg3.length) + -(arg4.length % 32) + floor32(arg4.length) + 192 len arg4.length % 32]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = Mask(32, 224, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 160 len arg4.length % 32]))
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 164] = msg.sender
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 196] = arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            call arg1.mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len 4] with:
                 gas gas_remaining wei
                args msg.sender, arg2, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
            call arg1.mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len 4] with:
                 gas gas_remaining wei
                args msg.sender, arg2, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 228 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
        require ext_call.success
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160 len arg3.length % 32]));
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function collectTokens(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require arg1.length > 0
    require arg2.length > 0
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] >= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require idx < arg1.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        balanceOf[mem[(32 * idx) + 140 len 20]] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        _60 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require s + mem[(32 * idx) + (32 * arg1.length) + 160] >= s
        require idx < arg1.length
        _62 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_62), msg.sender);
        idx = idx + 1
        s = s + _60
        continue 
    require balanceOf[address(msg.sender)] + (s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length
    return 1
}

function items(uint256 arg1) {
    mem[32] = 9
    mem[96] = itemAmountOf[arg1][3].length
    mem[128] = itemAmountOf[arg1][3].field_0
    idx = 128
    s = 0
    while itemAmountOf[arg1][3].length + 96 > idx:
        mem[idx + 32] = itemAmountOf[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(itemAmountOf[arg1][3].length) + ceil32(itemAmountOf[arg1][7].length) + 160
    mem[ceil32(itemAmountOf[arg1][3].length) + 128] = itemAmountOf[arg1][7].length
    mem[0] = sha3(arg1, 9) + 7
    mem[ceil32(itemAmountOf[arg1][3].length) + 160] = itemAmountOf[arg1][7].field_0
    idx = ceil32(itemAmountOf[arg1][3].length) + 160
    s = 0
    while ceil32(itemAmountOf[arg1][3].length) + itemAmountOf[arg1][7].length + 128 > idx:
        mem[idx + 32] = itemAmountOf[arg1][s + 7].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(itemAmountOf[arg1][3].length) + ceil32(itemAmountOf[arg1][7].length) + 160] = itemAmountOf[arg1].field_0
    mem[ceil32(itemAmountOf[arg1][3].length) + ceil32(itemAmountOf[arg1][7].length) + 192] = itemAmountOf[arg1].field_256
    mem[ceil32(itemAmountOf[arg1][3].length) + ceil32(itemAmountOf[arg1][7].length) + 256] = itemAmountOf[arg1].field_1024
    mem[ceil32(itemAmountOf[arg1][3].length) + ceil32(itemAmountOf[arg1][7].length) + 288] = itemAmountOf[arg1].field_1280
    mem[ceil32(itemAmountOf[arg1][3].length) + ceil32(itemAmountOf[arg1][7].length) + 320] = bool(itemAmountOf[arg1].field_1536)
    mem[ceil32(itemAmountOf[arg1][3].length) + ceil32(itemAmountOf[arg1][7].length) + 352] = bool(itemAmountOf[arg1].field_1544)
    mem[ceil32(itemAmountOf[arg1][3].length) + ceil32(itemAmountOf[arg1][7].length) + 416] = itemAmountOf[arg1].field_2048
    mem[ceil32(itemAmountOf[arg1][3].length) + ceil32(itemAmountOf[arg1][7].length) + 224] = 288
    mem[ceil32(itemAmountOf[arg1][3].length) + ceil32(itemAmountOf[arg1][7].length) + 448] = itemAmountOf[arg1][3].length
    mem[ceil32(itemAmountOf[arg1][3].length) + ceil32(itemAmountOf[arg1][7].length) + 480 len ceil32(itemAmountOf[arg1][3].length)] = mem[128 len ceil32(itemAmountOf[arg1][3].length)]
    mem[ceil32(itemAmountOf[arg1][3].length) + ceil32(itemAmountOf[arg1][7].length) + 384] = itemAmountOf[arg1][3].length + 320
    mem[itemAmountOf[arg1][3].length + ceil32(itemAmountOf[arg1][3].length) + ceil32(itemAmountOf[arg1][7].length) + 480] = itemAmountOf[arg1][7].length
    mem[itemAmountOf[arg1][3].length + ceil32(itemAmountOf[arg1][3].length) + ceil32(itemAmountOf[arg1][7].length) + 512 len ceil32(itemAmountOf[arg1][7].length)] = mem[ceil32(itemAmountOf[arg1][3].length) + 160 len ceil32(itemAmountOf[arg1][7].length)]
    if not itemAmountOf[arg1][7].length % 32:
        return itemAmountOf[arg1].field_0, 
               itemAmountOf[arg1].field_256,
               Array(len=itemAmountOf[arg1][3].length, data=mem[128 len ceil32(itemAmountOf[arg1][3].length)], mem[(2 * ceil32(itemAmountOf[arg1][3].length)) + ceil32(itemAmountOf[arg1][7].length) + 480 len itemAmountOf[arg1][7].length + itemAmountOf[arg1][3].length + -ceil32(itemAmountOf[arg1][3].length) + 32]),
               itemAmountOf[arg1].field_1024,
               itemAmountOf[arg1].field_1280,
               bool(itemAmountOf[arg1].field_1536),
               bool(itemAmountOf[arg1].field_1544),
               itemAmountOf[arg1][3].length + 320,
               itemAmountOf[arg1].field_2048
    mem[floor32(itemAmountOf[arg1][7].length) + itemAmountOf[arg1][3].length + ceil32(itemAmountOf[arg1][3].length) + ceil32(itemAmountOf[arg1][7].length) + 512] = mem[floor32(itemAmountOf[arg1][7].length) + itemAmountOf[arg1][3].length + ceil32(itemAmountOf[arg1][3].length) + ceil32(itemAmountOf[arg1][7].length) + -itemAmountOf[arg1][7].length % 32 + 544 len itemAmountOf[arg1][7].length % 32]
    return itemAmountOf[arg1].field_0, 
           itemAmountOf[arg1].field_256,
           Array(len=itemAmountOf[arg1][3].length, data=mem[128 len ceil32(itemAmountOf[arg1][3].length)], mem[(2 * ceil32(itemAmountOf[arg1][3].length)) + ceil32(itemAmountOf[arg1][7].length) + 480 len floor32(itemAmountOf[arg1][7].length) + itemAmountOf[arg1][3].length + -ceil32(itemAmountOf[arg1][3].length) + 64]),
           itemAmountOf[arg1].field_1024,
           itemAmountOf[arg1].field_1280,
           bool(itemAmountOf[arg1].field_1536),
           bool(itemAmountOf[arg1].field_1544),
           itemAmountOf[arg1][3].length + 320,
           itemAmountOf[arg1].field_2048
}



}
