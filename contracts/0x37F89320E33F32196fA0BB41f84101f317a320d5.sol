contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint128 stor3; offset 168
uint128 stor3; offset 160
address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint16 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
array of address stor15;
mapping of uint32 stor16;
uint32 stor17;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    Mask(88, 0, stor3.field_168) = 0
    bool(stor4.length) = 0
    stor4.length.field_1 = 12
    stor4.length.field_8 = 'PelecoinCash' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'PLCN' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    stor7 = 1268726
    stor8 = 1347204
    stor9 = 0
    stor10 = 1000
    stor11 = 1
    stor12 = 1
    stor13 = 1
    stor17 = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor0 = code.data[12165 len 32]
    stor1[address(msg.sender)] = code.data[12165 len 32]
    if not stor16[address(msg.sender)]:
        if stor17 != stor15.length:
            require stor17 < stor15.length
            address(stor15[stor17]) = msg.sender
            stor16[address(msg.sender)] = stor17
            stor17 = uint32(stor15.length)
        else:
            stor16[address(msg.sender)] = stor17
            stor15.length++
            if not stor15.length <= stor15.length + 1:
                idx = stor15.length + 1
                while stor15.length > idx:
                    uint256(stor15[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor15[stor15.length]) = msg.sender
            stor17 = uint32(stor17 + 1)
    return code.data[1808 len 10357]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 168
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 stor7;
uint256 stor8;
uint256 pendingFees;
uint16 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint32 stor14;
array of address stor15;
mapping of uint32 stor16;
uint32 stor17;
address stor17; offset 32

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function pendingFees() {
    return pendingFees
}

function decimals() {
    return decimals
}

function paused() {
    return bool(uint8(stor3.field_160))
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function sub_8269ffcc(?) {
    require msg.sender == owner
    stor12 = arg1
}

function sub_e5cfa8d5(?) {
    require msg.sender == owner
    stor10 = arg1
}

function setTransferFee(uint256 arg1) {
    require msg.sender == owner
    stor11 = arg1
}

function setManagementFee(uint256 arg1) {
    require msg.sender == owner
    stor13 = arg1
}

function sub_e198b04e(?) {
    require msg.sender == owner
    stor7 = arg1
    stor8 = arg2
}

function sub_9b6cee48(?) {
    require msg.sender == owner
    address(stor17.field_32) = arg1
}

function sub_36041e66(?) {
    require msg.sender == owner
    pendingFees += arg1
    totalSupply += arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_85f9f45e(?) {
    require msg.sender == owner
    if arg1 <= 0:
        require totalSupply >= arg1
        require balanceOf[address(stor3.field_0)] >= arg1
    totalSupply += arg1
    balanceOf[address(stor3.field_0)] += arg1
}

function distributeFees(uint256 arg1) {
    require msg.sender == owner
    if pendingFees >= arg1:
        s = 0
        s = 0
        s = 0
        idx = 0
        while uint32(idx) < stor15.length:
            require totalSupply
            mem[0] = address(stor15[uint32(idx)])
            mem[32] = 1
            balanceOf[address(stor15[uint32(idx)])] += pendingFees * 100 * balanceOf[address(stor15[uint32(idx)])] / totalSupply / 100
            pendingFees -= pendingFees * 100 * balanceOf[address(stor15[uint32(idx)])] / totalSupply / 100
            s = pendingFees * 100 * balanceOf[address(stor15[uint32(idx)])] / totalSupply / 100
            s = 100 * balanceOf[address(stor15[uint32(idx)])] / totalSupply
            s = address(stor15[uint32(idx)])
            idx = idx + 1
            continue 
}

function sub_f6251e6c(?) {
    require msg.sender == owner
    if uint32(arg1 - stor14) < arg2:
        return 0
    s = 0
    s = 0
    idx = 0
    s = 0
    while uint32(idx) < stor15.length:
        require stor10
        if balanceOf[address(stor15[uint32(idx)])] / stor10:
            require balanceOf[address(stor15[uint32(idx)])] / stor10
            require balanceOf[address(stor15[uint32(idx)])] / stor10 * stor13 / balanceOf[address(stor15[uint32(idx)])] / stor10 == stor13
        mem[0] = address(stor15[uint32(idx)])
        mem[32] = 1
        balanceOf[address(stor15[uint32(idx)])] += -1 * balanceOf[address(stor15[uint32(idx)])] / stor10 * stor13
        pendingFees += balanceOf[address(stor15[uint32(idx)])] / stor10 * stor13
        s = balanceOf[address(stor15[uint32(idx)])] / stor10 * stor13
        s = address(stor15[uint32(idx)])
        idx = idx + 1
        s = s + (balanceOf[address(stor15[uint32(idx)])] / stor10 * stor13)
        continue 
    stor14 = arg1
    return s
}

function sell(uint256 arg1) {
    require not uint8(stor3.field_168)
    Mask(88, 0, stor3.field_168) = 1
    require arg1 <= balanceOf[address(msg.sender)]
    require stor10
    if arg1 / stor10:
        require arg1 / stor10
        require arg1 / stor10 * stor12 / arg1 / stor10 == stor12
    pendingFees += arg1 / stor10 * stor12
    require arg1 - (arg1 / stor10 * stor12) <= balanceOf[address(stor3.field_0)]
    call msg.sender with:
       value (arg1 * stor8) - (arg1 / stor10 * stor12 * stor8) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer((arg1 - (arg1 / stor10 * stor12)), msg.sender, owner);
    if msg.sender:
        if not balanceOf[address(msg.sender)]:
            uint32(stor17.field_0) = stor16[address(msg.sender)]
            require uint32(stor17.field_0) < stor15.length
            address(stor15[uint32(stor17.field_0)]) = 0
    if not stor16[0]:
        if uint32(stor17.field_0) != stor15.length:
            require uint32(stor17.field_0) < stor15.length
            address(stor15[uint32(stor17.field_0)]) = 0
            stor16[0] = uint32(stor17.field_0)
            uint32(stor17.field_0) = uint32(stor15.length)
        else:
            stor16[0] = uint32(stor17.field_0)
            stor15.length++
            if not stor15.length <= stor15.length + 1:
                idx = stor15.length + 1
                while stor15.length > idx:
                    uint256(stor15[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor15[stor15.length]) = 0
            uint32(stor17.field_0) = uint32(uint32(stor17.field_0) + 1)
    Mask(88, 0, stor3.field_168) = 0
    return ((arg1 * stor8) - (arg1 / stor10 * stor12 * stor8))
}

function transfer(address arg1, uint256 arg2) {
    require stor10
    if arg2 / stor10:
        require arg2 / stor10
        require arg2 / stor10 * stor11 / arg2 / stor10 == stor11
    require not uint8(stor3.field_160)
    require arg2 - (arg2 / stor10 * stor11) <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / stor10 * stor11)
    require balanceOf[address(arg1)] + arg2 - (arg2 / stor10 * stor11) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / stor10 * stor11)
    emit Transfer((arg2 - (arg2 / stor10 * stor11)), msg.sender, arg1);
    balanceOf[address(msg.sender)] += -1 * arg2 / stor10 * stor11
    pendingFees += arg2 / stor10 * stor11
    if msg.sender:
        if not balanceOf[address(msg.sender)]:
            uint32(stor17.field_0) = stor16[address(msg.sender)]
            require uint32(stor17.field_0) < stor15.length
            address(stor15[uint32(stor17.field_0)]) = 0
    if not stor16[address(arg1)]:
        if uint32(stor17.field_0) != stor15.length:
            require uint32(stor17.field_0) < stor15.length
            address(stor15[uint32(stor17.field_0)]) = arg1
            stor16[address(arg1)] = uint32(stor17.field_0)
            uint32(stor17.field_0) = uint32(stor15.length)
        else:
            stor16[address(arg1)] = uint32(stor17.field_0)
            stor15.length++
            if not stor15.length <= stor15.length + 1:
                idx = stor15.length + 1
                while stor15.length > idx:
                    uint256(stor15[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor15[stor15.length]) = arg1
            uint32(stor17.field_0) = uint32(uint32(stor17.field_0) + 1)
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor10
    if arg3 / stor10:
        require arg3 / stor10
        require arg3 / stor10 * stor11 / arg3 / stor10 == stor11
    require arg3 / stor10 * stor11 <= arg3
    require not uint8(stor3.field_160)
    require balanceOf[address(arg2)] + arg3 - (arg3 / stor10 * stor11) >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / stor10 * stor11)
    require arg3 - (arg3 / stor10 * stor11) <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / stor10 * stor11)
    require arg3 - (arg3 / stor10 * stor11) <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 / stor10 * stor11)
    emit Transfer((arg3 - (arg3 / stor10 * stor11)), arg1, arg2);
    balanceOf[address(arg1)] += -1 * arg3 / stor10 * stor11
    pendingFees += arg3 / stor10 * stor11
    if arg1:
        if not balanceOf[address(arg1)]:
            uint32(stor17.field_0) = stor16[address(arg1)]
            require uint32(stor17.field_0) < stor15.length
            address(stor15[uint32(stor17.field_0)]) = 0
    if not stor16[address(arg2)]:
        if uint32(stor17.field_0) != stor15.length:
            require uint32(stor17.field_0) < stor15.length
            address(stor15[uint32(stor17.field_0)]) = arg2
            stor16[address(arg2)] = uint32(stor17.field_0)
            uint32(stor17.field_0) = uint32(stor15.length)
        else:
            stor16[address(arg2)] = uint32(stor17.field_0)
            stor15.length++
            if not stor15.length <= stor15.length + 1:
                idx = stor15.length + 1
                while stor15.length > idx:
                    uint256(stor15[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor15[stor15.length]) = arg2
            uint32(stor17.field_0) = uint32(uint32(stor17.field_0) + 1)
    return 1
}

function sub_c0bda42b(?) {
    require msg.sender == owner
    if arg2 < 0:
        if arg2 > 0:
            require stor10
            if -arg2 / stor10:
                require -arg2 / stor10
                require -arg2 / stor10 * stor12 / -arg2 / stor10 == stor12
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg2 - (-arg2 / stor10 * stor12)
            totalSupply -= arg2
            pendingFees += -arg2 / stor10 * stor12
            return (-arg2 - (-arg2 / stor10 * stor12))
        if balanceOf[address(arg1)] >= -arg2:
            require stor10
            if -arg2 / stor10:
                require -arg2 / stor10
                require -arg2 / stor10 * stor12 / -arg2 / stor10 == stor12
            balanceOf[address(arg1)] += test266151307() * arg2
            totalSupply = totalSupply - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2) + (-arg2 / stor10 * stor12)
            pendingFees += -arg2 / stor10 * stor12
            return (arg2 + (-arg2 / stor10 * stor12))
    else:
        if arg2 > 0:
            require stor10
            if arg2 / stor10:
                require arg2 / stor10
                require arg2 / stor10 * stor12 / arg2 / stor10 == stor12
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / stor10 * stor12)
            totalSupply += arg2
            pendingFees += arg2 / stor10 * stor12
            return (arg2 - (arg2 / stor10 * stor12))
        if balanceOf[address(arg1)] >= arg2:
            require stor10
            if arg2 / stor10:
                require arg2 / stor10
                require arg2 / stor10 * stor12 / arg2 / stor10 == stor12
            balanceOf[address(arg1)] -= arg2
            totalSupply = totalSupply - arg2 + (arg2 / stor10 * stor12)
            pendingFees += arg2 / stor10 * stor12
            return (arg2 + (arg2 / stor10 * stor12))
    require stor10
    if balanceOf[address(arg1)] / stor10:
        require balanceOf[address(arg1)] / stor10
        require balanceOf[address(arg1)] / stor10 * stor12 / balanceOf[address(arg1)] / stor10 == stor12
    balanceOf[address(arg1)] = 0
    totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / stor10 * stor12)
    pendingFees += balanceOf[address(arg1)] / stor10 * stor12
    return (arg2 + (balanceOf[address(arg1)] / stor10 * stor12))
}

function buy() payable {
    require not uint8(stor3.field_168)
    Mask(88, 0, stor3.field_168) = 1
    allowance[address(stor3.field_0)][address(msg.sender)] = msg.value * stor7
    require stor10
    if msg.value * stor7 / stor10:
        require msg.value * stor7 / stor10
        require msg.value * stor7 / stor10 * stor11 / msg.value * stor7 / stor10 == stor11
    require msg.value * stor7 / stor10 * stor11 <= msg.value * stor7
    require not uint8(stor3.field_160)
    require balanceOf[address(msg.sender)] + (msg.value * stor7) - (msg.value * stor7 / stor10 * stor11) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * stor7) - (msg.value * stor7 / stor10 * stor11)
    require (msg.value * stor7) - (msg.value * stor7 / stor10 * stor11) <= balanceOf[address(stor3.field_0)]
    balanceOf[address(stor3.field_0)] = balanceOf[address(stor3.field_0)] - (msg.value * stor7) + (msg.value * stor7 / stor10 * stor11)
    require (msg.value * stor7) - (msg.value * stor7 / stor10 * stor11) <= allowance[address(stor3.field_0)][address(msg.sender)]
    allowance[address(stor3.field_0)][address(msg.sender)] = allowance[address(stor3.field_0)][address(msg.sender)] - (msg.value * stor7) + (msg.value * stor7 / stor10 * stor11)
    emit Transfer(((msg.value * stor7) - (msg.value * stor7 / stor10 * stor11)), owner, msg.sender);
    balanceOf[address(stor3.field_0)] += -1 * msg.value * stor7 / stor10 * stor11
    pendingFees += msg.value * stor7 / stor10 * stor11
    if owner:
        if not balanceOf[address(stor3.field_0)]:
            uint32(stor17.field_0) = stor16[address(stor3.field_0)]
            require uint32(stor17.field_0) < stor15.length
            address(stor15[uint32(stor17.field_0)]) = 0
    if not stor16[address(msg.sender)]:
        if uint32(stor17.field_0) != stor15.length:
            require uint32(stor17.field_0) < stor15.length
            address(stor15[uint32(stor17.field_0)]) = msg.sender
            stor16[address(msg.sender)] = uint32(stor17.field_0)
            uint32(stor17.field_0) = uint32(stor15.length)
        else:
            stor16[address(msg.sender)] = uint32(stor17.field_0)
            stor15.length++
            if not stor15.length <= stor15.length + 1:
                idx = stor15.length + 1
                while stor15.length > idx:
                    uint256(stor15[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor15[stor15.length]) = msg.sender
            uint32(stor17.field_0) = uint32(uint32(stor17.field_0) + 1)
    allowance[address(stor3.field_0)][address(msg.sender)] = 0
    Mask(88, 0, stor3.field_168) = 0
    return (msg.value * stor7)
}



}
