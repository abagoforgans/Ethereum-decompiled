contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
mapping of uint256 stor6;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    stor5 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    bool(stor1.length) = 0
    stor1.length.field_1 = 10
    stor1.length.field_8 = 'LIKER CASH' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'LKC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 18
    stor4 = 300 * 10^6 * 10^stor3
    stor6[address(stor0.field_0)] = stor4
    emit Transfer(stor4, 0, address(stor0.field_0));
    return code.data[761 len 13986]
}



// =====================  Runtime code  =====================


#
#  - lockUserInfo(address arg1)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
uint8 stor5;
mapping of struct balanceOf;
array of struct stor8;

function restoreFinished() {
    return bool(stor5)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)].field_0
}

function owner() {
    return owner
}

function lockState(address arg1) {
    return bool(uint8(balanceOf[address(arg1)].field_256))
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return balanceOf[address(arg1)][2][address(arg2)].field_0
}

function _fallback() payable {
    revert
}

function finishRestore() {
    require msg.sender == owner
    stor5 = 1
    emit RestoreFinished()
    return 1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function lock(address arg1) {
    require msg.sender == owner
    require not uint8(balanceOf[address(arg1)].field_256)
    uint8(balanceOf[address(arg1)].field_256) = 1
    return 1
}

function unlock(address arg1) {
    require msg.sender == owner
    require bool(uint8(balanceOf[address(arg1)].field_256)) == 1
    uint8(balanceOf[address(arg1)].field_256) = 0
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require arg2 > 0
    balanceOf[address(msg.sender)][2][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function clearLockUser(address arg1, uint256 arg2) {
    require msg.sender == owner
    require stor8[address(arg1)].field_768 > arg2
    require arg2 < stor8[address(arg1)].field_768
    stor[arg2 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor8', 8)))].field_0 = 0
}

function burn(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceOf[address(arg1)].field_0
    require arg2 <= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2);
    return 1
}

function distribute(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 != this.address
    require arg1
    require balanceOf[address(msg.sender)].field_0 >= arg2
    require arg2 <= balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)].field_0 -= arg2
    require balanceOf[address(arg1)].field_0 + arg2 >= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferRestore(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require not stor5
    require arg2 != this.address
    require arg2
    require balanceOf[address(arg1)].field_0 >= arg3
    require arg3 <= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 -= arg3
    require balanceOf[address(arg2)].field_0 + arg3 >= balanceOf[address(arg2)].field_0
    balanceOf[address(arg2)].field_0 += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function addLockDate(uint8 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1 <= 5
    idx = 0
    while idx < stor7[arg1 << 248].field_0:
        mem[0] = sha3(arg1 << 248, 7)
        require stor7[arg1 << 248][idx].field_0 != arg2
        idx = idx + 1
        continue 
    stor7[arg1 << 248].field_0++
    if not stor7[arg1 << 248].field_0 <= stor7[arg1 << 248].field_0 + 1:
        idx = stor7[arg1 << 248].field_0 + 1
        while stor7[arg1 << 248].field_0 > idx:
            stor7[arg1 << 248][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor7[arg1 << 248][stor7[arg1 << 248].field_0].field_0 = arg2
    stor7[arg1 << 248].field_256++
    if not stor7[arg1 << 248].field_256 <= stor7[arg1 << 248].field_256 + 1:
        idx = stor7[arg1 << 248].field_256 + 1
        while stor7[arg1 << 248].field_256 > idx:
            stor7[arg1 << 248][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor[stor7[arg1 << 248].field_256 + ('array', 1, ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor7', 7)))].field_0 = arg3
}

function lockTypeInfoGroup(uint8 arg1) {
    require arg1 <= 5
    if stor7[arg1 << 248].field_0:
        mem[192] = stor7[arg1 << 248].field_0
        idx = 192
        s = 0
        while (32 * stor7[arg1 << 248].field_0) + 160 > idx:
            mem[idx + 32] = stor7[arg1 << 248][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor7[arg1 << 248].field_256:
        mem[(32 * stor7[arg1 << 248].field_0) + 224] = stor7[arg1 << 248][1].field_0
        idx = (32 * stor7[arg1 << 248].field_0) + 224
        s = 0
        while (32 * stor7[arg1 << 248].field_0) + (32 * stor7[arg1 << 248].field_256) + 192 > idx:
            mem[idx + 32] = stor7[arg1 << 248][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor7[arg1 << 248].field_0) + (32 * stor7[arg1 << 248].field_256) + 320 len floor32(stor7[arg1 << 248].field_0)] = mem[192 len floor32(stor7[arg1 << 248].field_0)]
    mem[(64 * stor7[arg1 << 248].field_0) + (32 * stor7[arg1 << 248].field_256) + 320] = stor7[arg1 << 248].field_256
    mem[(64 * stor7[arg1 << 248].field_0) + (32 * stor7[arg1 << 248].field_256) + 352 len floor32(stor7[arg1 << 248].field_256)] = mem[(32 * stor7[arg1 << 248].field_0) + 224 len floor32(stor7[arg1 << 248].field_256)]
    return Array(len=stor7[arg1 << 248].field_0, data=mem[192 len floor32(stor7[arg1 << 248].field_0)], mem[(32 * stor7[arg1 << 248].field_0) + (32 * stor7[arg1 << 248].field_256) + floor32(stor7[arg1 << 248].field_0) + 320 len (32 * stor7[arg1 << 248].field_0) + (32 * stor7[arg1 << 248].field_256) + -floor32(stor7[arg1 << 248].field_0) + 32]), 
           (32 * stor7[arg1 << 248].field_0) + 96
}

function deleteLockDate(uint8 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 <= 5
    require 0 < stor7[arg1 << 248].field_0
    idx = 0
    while stor7[arg1 << 248][idx].field_0 != arg2:
        require idx + 1 < stor7[arg1 << 248].field_0
        mem[0] = sha3(arg1 << 248, 7)
        idx = idx + 1
        continue 
    idx = None + 2
    while idx < stor7[arg1 << 248].field_0 - 1:
        require idx + 1 < stor7[arg1 << 248].field_0
        require idx < stor7[arg1 << 248].field_0
        stor7[arg1 << 248][idx].field_0 = stor7[arg1 << 248][idx].field_256
        require idx + 1 < stor7[arg1 << 248].field_256
        require idx < stor7[arg1 << 248].field_256
        mem[0] = sha3(arg1 << 248, 7) + 1
        stor7[arg1 << 248][idx + 1].field_0 = stor7[arg1 << 248][idx + 1].field_256
        idx = idx + 1
        continue 
    require stor7[arg1 << 248].field_0 - 1 < stor7[arg1 << 248].field_0
    stor7[arg1 << 248][stor7[arg1 << 248].field_0].field_0 = 0
    stor7[arg1 << 248].field_0--
    if not stor7[arg1 << 248].field_0 <= stor7[arg1 << 248].field_0 - 1:
        idx = stor7[arg1 << 248].field_0 - 1
        while stor7[arg1 << 248].field_0 > idx:
            stor7[arg1 << 248][idx].field_0 = 0
            idx = idx + 1
            continue 
    require stor7[arg1 << 248].field_256 - 1 < stor7[arg1 << 248].field_256
    stor[stor7[arg1 << 248].field_256 + ('array', 1, ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor7', 7)))].field_0 = 0
    stor7[arg1 << 248].field_256--
    if not stor7[arg1 << 248].field_256 <= stor7[arg1 << 248].field_256 - 1:
        idx = stor7[arg1 << 248].field_256 - 1
        while stor7[arg1 << 248].field_256 > idx:
            stor7[arg1 << 248][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
}

function lockBalanceAll(address arg1) {
    idx = 0
    s = 0
    while idx < stor8[address(arg1)].field_0:
        require idx < stor8[address(arg1)].field_0
        if stor8[address(arg1)][idx].field_0 == 1:
            require idx < stor8[address(arg1)].field_768
            if block.timestamp >= stor8[address(arg1)][idx + 3].field_0:
                require s >= s
                mem[0] = arg1
                mem[32] = 8
                idx = idx + 1
                s = s
                continue 
            require idx < stor8[address(arg1)].field_256
            require s + stor8[address(arg1)][idx + 1].field_0 >= s
            mem[0] = arg1
            mem[32] = 8
            idx = idx + 1
            s = s + stor8[address(arg1)][idx + 1].field_0
            continue 
        require idx < stor8[address(arg1)].field_0
        if not stor8[address(arg1)][idx].field_0:
            mem[0] = arg1
            mem[32] = 8
            idx = idx + 1
            s = s
            continue 
        require idx < stor8[address(arg1)].field_0
        t = 0
        u = 99999999999
        v = 0
        while t < stor7[stor8[address(arg1)][idx].field_0].field_0:
            require t < stor7[stor8[address(arg1)][idx].field_0].field_0
            if block.timestamp >= stor7[stor8[address(arg1)][idx].field_0][t].field_0:
                mem[0] = stor8[address(arg1)][idx].field_0
                mem[32] = 7
                t = t + 1
                u = u
                v = v
                continue 
            require t < stor7[stor8[address(arg1)][idx].field_0].field_0
            if stor7[stor8[address(arg1)][idx].field_0][t].field_0 >= u:
                mem[0] = stor8[address(arg1)][idx].field_0
                mem[32] = 7
                t = t + 1
                u = u
                v = v
                continue 
            require t < stor7[stor8[address(arg1)][idx].field_0].field_0
            require t < stor7[stor8[address(arg1)][idx].field_0].field_256
            mem[0] = stor8[address(arg1)][idx].field_0
            mem[32] = 7
            t = t + 1
            u = stor7[stor8[address(arg1)][idx].field_0][t].field_0
            v = stor7[stor8[address(arg1)][idx].field_0][t + 1].field_0
            continue 
        if not v:
            require s >= s
            mem[0] = arg1
            mem[32] = 8
            idx = idx + 1
            s = s
            continue 
        require idx < stor8[address(arg1)].field_256
        if not stor8[address(arg1)][idx + 1].field_0 / 100:
            require s >= s
            mem[0] = arg1
            mem[32] = 8
            idx = idx + 1
            s = s
            continue 
        require stor8[address(arg1)][idx + 1].field_0 / 100
        require stor8[address(arg1)][idx + 1].field_0 / 100 * v / stor8[address(arg1)][idx + 1].field_0 / 100 == v
        require s + (stor8[address(arg1)][idx + 1].field_0 / 100 * v) >= s
        mem[0] = arg1
        mem[32] = 8
        idx = idx + 1
        s = s + (stor8[address(arg1)][idx + 1].field_0 / 100 * v)
        continue 
    return s
}

function useBalanceOf(address arg1) {
    idx = 0
    s = 0
    while idx < stor8[address(arg1)].field_0:
        require idx < stor8[address(arg1)].field_0
        if stor8[address(arg1)][idx].field_0 == 1:
            require idx < stor8[address(arg1)].field_768
            if block.timestamp >= stor8[address(arg1)][idx + 3].field_0:
                require s >= s
                mem[0] = arg1
                mem[32] = 8
                idx = idx + 1
                s = s
                continue 
            require idx < stor8[address(arg1)].field_256
            require s + stor8[address(arg1)][idx + 1].field_0 >= s
            mem[0] = arg1
            mem[32] = 8
            idx = idx + 1
            s = s + stor8[address(arg1)][idx + 1].field_0
            continue 
        require idx < stor8[address(arg1)].field_0
        if not stor8[address(arg1)][idx].field_0:
            mem[0] = arg1
            mem[32] = 8
            idx = idx + 1
            s = s
            continue 
        require idx < stor8[address(arg1)].field_0
        t = 0
        u = 99999999999
        v = 0
        while t < stor7[stor8[address(arg1)][idx].field_0].field_0:
            require t < stor7[stor8[address(arg1)][idx].field_0].field_0
            if block.timestamp >= stor7[stor8[address(arg1)][idx].field_0][t].field_0:
                mem[0] = stor8[address(arg1)][idx].field_0
                mem[32] = 7
                t = t + 1
                u = u
                v = v
                continue 
            require t < stor7[stor8[address(arg1)][idx].field_0].field_0
            if stor7[stor8[address(arg1)][idx].field_0][t].field_0 >= u:
                mem[0] = stor8[address(arg1)][idx].field_0
                mem[32] = 7
                t = t + 1
                u = u
                v = v
                continue 
            require t < stor7[stor8[address(arg1)][idx].field_0].field_0
            require t < stor7[stor8[address(arg1)][idx].field_0].field_256
            mem[0] = stor8[address(arg1)][idx].field_0
            mem[32] = 7
            t = t + 1
            u = stor7[stor8[address(arg1)][idx].field_0][t].field_0
            v = stor7[stor8[address(arg1)][idx].field_0][t + 1].field_0
            continue 
        if not v:
            require s >= s
            mem[0] = arg1
            mem[32] = 8
            idx = idx + 1
            s = s
            continue 
        require idx < stor8[address(arg1)].field_256
        if not stor8[address(arg1)][idx + 1].field_0 / 100:
            require s >= s
            mem[0] = arg1
            mem[32] = 8
            idx = idx + 1
            s = s
            continue 
        require stor8[address(arg1)][idx + 1].field_0 / 100
        require stor8[address(arg1)][idx + 1].field_0 / 100 * v / stor8[address(arg1)][idx + 1].field_0 / 100 == v
        require s + (stor8[address(arg1)][idx + 1].field_0 / 100 * v) >= s
        mem[0] = arg1
        mem[32] = 8
        idx = idx + 1
        s = s + (stor8[address(arg1)][idx + 1].field_0 / 100 * v)
        continue 
    if s <= balanceOf[address(arg1)].field_0:
        return (balanceOf[address(arg1)].field_0 - s)
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
    require arg2 != this.address
    require arg2
    require balanceOf[address(arg1)].field_0 >= arg3
    require not uint8(balanceOf[address(arg1)].field_256)
    idx = 0
    s = 0
    while idx < stor8[address(arg1)].field_0:
        require idx < stor8[address(arg1)].field_0
        if stor8[address(arg1)][idx].field_0 == 1:
            require idx < stor8[address(arg1)].field_768
            if block.timestamp >= stor8[address(arg1)][idx + 3].field_0:
                require s >= s
                mem[0] = arg1
                mem[32] = 8
                idx = idx + 1
                s = s
                continue 
            require idx < stor8[address(arg1)].field_256
            require s + stor8[address(arg1)][idx + 1].field_0 >= s
            mem[0] = arg1
            mem[32] = 8
            idx = idx + 1
            s = s + stor8[address(arg1)][idx + 1].field_0
            continue 
        require idx < stor8[address(arg1)].field_0
        if not stor8[address(arg1)][idx].field_0:
            mem[0] = arg1
            mem[32] = 8
            idx = idx + 1
            s = s
            continue 
        require idx < stor8[address(arg1)].field_0
        t = 0
        u = 99999999999
        v = 0
        while t < stor7[stor8[address(arg1)][idx].field_0].field_0:
            require t < stor7[stor8[address(arg1)][idx].field_0].field_0
            if block.timestamp >= stor7[stor8[address(arg1)][idx].field_0][t].field_0:
                mem[0] = stor8[address(arg1)][idx].field_0
                mem[32] = 7
                t = t + 1
                u = u
                v = v
                continue 
            require t < stor7[stor8[address(arg1)][idx].field_0].field_0
            if stor7[stor8[address(arg1)][idx].field_0][t].field_0 >= u:
                mem[0] = stor8[address(arg1)][idx].field_0
                mem[32] = 7
                t = t + 1
                u = u
                v = v
                continue 
            require t < stor7[stor8[address(arg1)][idx].field_0].field_0
            require t < stor7[stor8[address(arg1)][idx].field_0].field_256
            mem[0] = stor8[address(arg1)][idx].field_0
            mem[32] = 7
            t = t + 1
            u = stor7[stor8[address(arg1)][idx].field_0][t].field_0
            v = stor7[stor8[address(arg1)][idx].field_0][t + 1].field_0
            continue 
        if not v:
            require s >= s
            mem[0] = arg1
            mem[32] = 8
            idx = idx + 1
            s = s
            continue 
        require idx < stor8[address(arg1)].field_256
        if not stor8[address(arg1)][idx + 1].field_0 / 100:
            require s >= s
            mem[0] = arg1
            mem[32] = 8
            idx = idx + 1
            s = s
            continue 
        require stor8[address(arg1)][idx + 1].field_0 / 100
        require stor8[address(arg1)][idx + 1].field_0 / 100 * v / stor8[address(arg1)][idx + 1].field_0 / 100 == v
        require s + (stor8[address(arg1)][idx + 1].field_0 / 100 * v) >= s
        mem[0] = arg1
        mem[32] = 8
        idx = idx + 1
        s = s + (stor8[address(arg1)][idx + 1].field_0 / 100 * v)
        continue 
    require s <= balanceOf[address(arg1)].field_0
    require arg3 <= balanceOf[address(arg1)].field_0 - s
    require arg3 <= balanceOf[address(arg1)][2][address(msg.sender)].field_0
    require arg3 <= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 -= arg3
    require balanceOf[address(arg2)].field_0 + arg3 >= balanceOf[address(arg2)].field_0
    balanceOf[address(arg2)].field_0 += arg3
    require arg3 <= balanceOf[address(arg1)][2][address(msg.sender)].field_0
    balanceOf[address(arg1)][2][address(msg.sender)].field_0 -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require arg1 != this.address
    require arg1
    require balanceOf[address(msg.sender)].field_0 >= arg2
    require not uint8(balanceOf[address(msg.sender)].field_256)
    idx = 0
    s = 0
    while idx < stor8[address(msg.sender)].field_0:
        require idx < stor8[address(msg.sender)].field_0
        if stor8[address(msg.sender)][idx].field_0 == 1:
            require idx < stor8[address(msg.sender)].field_768
            if block.timestamp >= stor8[address(msg.sender)][idx + 3].field_0:
                require s >= s
                mem[0] = msg.sender
                mem[32] = 8
                idx = idx + 1
                s = s
                continue 
            require idx < stor8[address(msg.sender)].field_256
            require s + stor8[address(msg.sender)][idx + 1].field_0 >= s
            mem[0] = msg.sender
            mem[32] = 8
            idx = idx + 1
            s = s + stor8[address(msg.sender)][idx + 1].field_0
            continue 
        require idx < stor8[address(msg.sender)].field_0
        if not stor8[address(msg.sender)][idx].field_0:
            mem[0] = msg.sender
            mem[32] = 8
            idx = idx + 1
            s = s
            continue 
        require idx < stor8[address(msg.sender)].field_0
        t = 0
        u = 99999999999
        v = 0
        while t < stor7[stor8[address(msg.sender)][idx].field_0].field_0:
            require t < stor7[stor8[address(msg.sender)][idx].field_0].field_0
            if block.timestamp >= stor7[stor8[address(msg.sender)][idx].field_0][t].field_0:
                mem[0] = stor8[address(msg.sender)][idx].field_0
                mem[32] = 7
                t = t + 1
                u = u
                v = v
                continue 
            require t < stor7[stor8[address(msg.sender)][idx].field_0].field_0
            if stor7[stor8[address(msg.sender)][idx].field_0][t].field_0 >= u:
                mem[0] = stor8[address(msg.sender)][idx].field_0
                mem[32] = 7
                t = t + 1
                u = u
                v = v
                continue 
            require t < stor7[stor8[address(msg.sender)][idx].field_0].field_0
            require t < stor7[stor8[address(msg.sender)][idx].field_0].field_256
            mem[0] = stor8[address(msg.sender)][idx].field_0
            mem[32] = 7
            t = t + 1
            u = stor7[stor8[address(msg.sender)][idx].field_0][t].field_0
            v = stor7[stor8[address(msg.sender)][idx].field_0][t + 1].field_0
            continue 
        if not v:
            require s >= s
            mem[0] = msg.sender
            mem[32] = 8
            idx = idx + 1
            s = s
            continue 
        require idx < stor8[address(msg.sender)].field_256
        if not stor8[address(msg.sender)][idx + 1].field_0 / 100:
            require s >= s
            mem[0] = msg.sender
            mem[32] = 8
            idx = idx + 1
            s = s
            continue 
        require stor8[address(msg.sender)][idx + 1].field_0 / 100
        require stor8[address(msg.sender)][idx + 1].field_0 / 100 * v / stor8[address(msg.sender)][idx + 1].field_0 / 100 == v
        require s + (stor8[address(msg.sender)][idx + 1].field_0 / 100 * v) >= s
        mem[0] = msg.sender
        mem[32] = 8
        idx = idx + 1
        s = s + (stor8[address(msg.sender)][idx + 1].field_0 / 100 * v)
        continue 
    require s <= balanceOf[address(msg.sender)].field_0
    require arg2 <= balanceOf[address(msg.sender)].field_0 - s
    require arg2 <= balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)].field_0 -= arg2
    require balanceOf[address(arg1)].field_0 + arg2 >= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function setLockUsers(uint8 arg1, address[] arg2, uint256[] arg3, uint256[] arg4) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == owner
    require arg2.length > 0
    require arg2.length == arg3.length
    require arg2.length == arg4.length
    require arg1 <= 5
    require arg1
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        s = 0
        t = 0
        while s < stor8[mem[(32 * idx) + 140 len 20]].field_0:
            require s < stor8[address(mem[(32 * idx) + 128])].field_0
            if stor8[address(mem[(32 * idx) + 128])][s].field_0 == 1:
                require s < stor8[address(mem[(32 * idx) + 128])].field_768
                if block.timestamp >= stor8[address(mem[(32 * idx) + 128])][s + 3].field_0:
                    require t >= t
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 8
                    s = s + 1
                    t = t
                    continue 
                require s < stor8[address(mem[(32 * idx) + 128])].field_256
                require t + stor8[address(mem[(32 * idx) + 128])][s + 1].field_0 >= t
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 8
                s = s + 1
                t = t + stor8[address(mem[(32 * idx) + 128])][s + 1].field_0
                continue 
            require s < stor8[address(mem[(32 * idx) + 128])].field_0
            if not stor8[address(mem[(32 * idx) + 128])][s].field_0:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 8
                s = s + 1
                t = t
                continue 
            require s < stor8[address(mem[(32 * idx) + 128])].field_0
            u = 0
            v = 99999999999
            w = 0
            while u < stor7[stor8[address(mem[(32 * idx) + 128])][s].field_0].field_0:
                require u < stor7[stor8[address(mem[(32 * idx) + 128])][s].field_0].field_0
                if block.timestamp >= stor7[stor8[address(mem[(32 * idx) + 128])][s].field_0][u].field_0:
                    mem[0] = stor8[address(mem[(32 * idx) + 128])][s].field_0
                    mem[32] = 7
                    u = u + 1
                    v = v
                    w = w
                    continue 
                require u < stor7[stor8[address(mem[(32 * idx) + 128])][s].field_0].field_0
                if stor7[stor8[address(mem[(32 * idx) + 128])][s].field_0][u].field_0 >= v:
                    mem[0] = stor8[address(mem[(32 * idx) + 128])][s].field_0
                    mem[32] = 7
                    u = u + 1
                    v = v
                    w = w
                    continue 
                require u < stor7[stor8[address(mem[(32 * idx) + 128])][s].field_0].field_0
                require u < stor7[stor8[address(mem[(32 * idx) + 128])][s].field_0].field_256
                mem[0] = stor8[address(mem[(32 * idx) + 128])][s].field_0
                mem[32] = 7
                u = u + 1
                v = stor7[stor8[address(mem[(32 * idx) + 128])][s].field_0][u].field_0
                w = stor7[stor8[address(mem[(32 * idx) + 128])][s].field_0][u + 1].field_0
                continue 
            if not w:
                require t >= t
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 8
                s = s + 1
                t = t
                continue 
            require s < stor8[address(mem[(32 * idx) + 128])].field_256
            if not stor8[address(mem[(32 * idx) + 128])][s + 1].field_0 / 100:
                require t >= t
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 8
                s = s + 1
                t = t
                continue 
            require stor8[address(mem[(32 * idx) + 128])][s + 1].field_0 / 100
            require stor8[address(mem[(32 * idx) + 128])][s + 1].field_0 / 100 * w / stor8[address(mem[(32 * idx) + 128])][s + 1].field_0 / 100 == w
            require t + (stor8[address(mem[(32 * idx) + 128])][s + 1].field_0 / 100 * w) >= t
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 8
            s = s + 1
            t = t + (stor8[address(mem[(32 * idx) + 128])][s + 1].field_0 / 100 * w)
            continue 
        require t <= balanceOf[address(mem[(32 * idx) + 128])].field_0
        require idx < arg3.length
        require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(mem[(32 * idx) + 128])].field_0 - t
        require idx < arg2.length
        _273 = mem[(32 * idx) + 128]
        require idx < arg3.length
        require idx < arg4.length
        _279 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
        stor8[mem[(32 * idx) + 140 len 20]].field_0++
        if not stor8[mem[(32 * idx) + 140 len 20]].field_0 > stor8[mem[(32 * idx) + 140 len 20]].field_0 + 1:
            require arg1 <= 5
            uint8(stor8[mem[(32 * idx) + 140 len 20]][stor8[mem[(32 * idx) + 140 len 20]].field_0].field_0) = arg1
            Mask(248, 0, stor8[mem[(32 * idx) + 140 len 20]][stor8[mem[(32 * idx) + 140 len 20]].field_0].field_8) = 0
            stor8[address(mem[(32 * idx) + 128])].field_256++
            if not stor8[address(mem[(32 * idx) + 128])].field_256 <= stor8[address(mem[(32 * idx) + 128])].field_256 + 1:
                s = sha3(sha3(address(mem[(32 * idx) + 128]), 8) + 1) + stor8[address(mem[(32 * idx) + 128])].field_256 + 1
                while sha3(sha3(address(mem[(32 * idx) + 128]), 8) + 1) + stor8[address(mem[(32 * idx) + 128])].field_256 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[stor8[address(mem[(32 * idx) + 128])].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor8', 8)))].field_0 = mem[(32 * idx) + (32 * arg2.length) + 160]
            stor8[address(mem[(32 * idx) + 128])].field_512++
            if not stor8[address(mem[(32 * idx) + 128])].field_512 <= stor8[address(mem[(32 * idx) + 128])].field_512 + 1:
                s = sha3(sha3(address(mem[(32 * idx) + 128]), 8) + 2) + stor8[address(mem[(32 * idx) + 128])].field_512 + 1
                while sha3(sha3(address(mem[(32 * idx) + 128]), 8) + 2) + stor8[address(mem[(32 * idx) + 128])].field_512 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[stor8[address(mem[(32 * idx) + 128])].field_512 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor8', 8)))].field_0 = block.timestamp
            mem[32] = 8
            stor8[address(mem[(32 * idx) + 128])].field_768++
            if not stor8[address(mem[(32 * idx) + 128])].field_768 <= stor8[address(mem[(32 * idx) + 128])].field_768 + 1:
                s = sha3(sha3(address(mem[(32 * idx) + 128]), 8) + 3) + stor8[address(mem[(32 * idx) + 128])].field_768 + 1
                while sha3(sha3(address(mem[(32 * idx) + 128]), 8) + 3) + stor8[address(mem[(32 * idx) + 128])].field_768 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = sha3(address(mem[(32 * idx) + 128]), 8) + 3
            stor[stor8[address(mem[(32 * idx) + 128])].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor8', 8)))].field_0 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = _279
            emit Lock(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192], _279, address(_273));
            idx = idx + 1
            continue 
        s = sha3(sha3(mem[(32 * idx) + 140 len 20], 8)) + stor8[mem[(32 * idx) + 140 len 20]].field_0 + 1
        while sha3(sha3(mem[(32 * idx) + 140 len 20], 8)) + stor8[mem[(32 * idx) + 140 len 20]].field_0 > s:
            stor[s] = 0
            s = s + 1
            continue 
        require arg1 <= 5
        uint8(stor8[mem[(32 * idx) + 140 len 20]][stor8[mem[(32 * idx) + 140 len 20]].field_0].field_0) = arg1
        Mask(248, 0, stor8[mem[(32 * idx) + 140 len 20]][stor8[mem[(32 * idx) + 140 len 20]].field_0].field_8) = 0
        stor8[address(mem[(32 * idx) + 128])].field_256++
        if not stor8[address(mem[(32 * idx) + 128])].field_256 > stor8[address(mem[(32 * idx) + 128])].field_256 + 1:
            stor[stor8[address(mem[(32 * idx) + 128])].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor8', 8)))].field_0 = mem[(32 * idx) + (32 * arg2.length) + 160]
            stor8[address(mem[(32 * idx) + 128])].field_512++
            if not stor8[address(mem[(32 * idx) + 128])].field_512 <= stor8[address(mem[(32 * idx) + 128])].field_512 + 1:
                s = sha3(sha3(address(mem[(32 * idx) + 128]), 8) + 2) + stor8[address(mem[(32 * idx) + 128])].field_512 + 1
                while sha3(sha3(address(mem[(32 * idx) + 128]), 8) + 2) + stor8[address(mem[(32 * idx) + 128])].field_512 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[stor8[address(mem[(32 * idx) + 128])].field_512 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor8', 8)))].field_0 = block.timestamp
            mem[32] = 8
            stor8[address(mem[(32 * idx) + 128])].field_768++
            if not stor8[address(mem[(32 * idx) + 128])].field_768 <= stor8[address(mem[(32 * idx) + 128])].field_768 + 1:
                s = sha3(sha3(address(mem[(32 * idx) + 128]), 8) + 3) + stor8[address(mem[(32 * idx) + 128])].field_768 + 1
                while sha3(sha3(address(mem[(32 * idx) + 128]), 8) + 3) + stor8[address(mem[(32 * idx) + 128])].field_768 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = sha3(address(mem[(32 * idx) + 128]), 8) + 3
            stor[stor8[address(mem[(32 * idx) + 128])].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor8', 8)))].field_0 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = _279
            emit Lock(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192], _279, address(_273));
            idx = idx + 1
            continue 
        s = sha3(sha3(address(mem[(32 * idx) + 128]), 8) + 1) + stor8[address(mem[(32 * idx) + 128])].field_256 + 1
        while sha3(sha3(address(mem[(32 * idx) + 128]), 8) + 1) + stor8[address(mem[(32 * idx) + 128])].field_256 > s:
            stor[s] = 0
            s = s + 1
            continue 
        stor[stor8[address(mem[(32 * idx) + 128])].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor8', 8)))].field_0 = mem[(32 * idx) + (32 * arg2.length) + 160]
        stor8[address(mem[(32 * idx) + 128])].field_512++
        if not stor8[address(mem[(32 * idx) + 128])].field_512 > stor8[address(mem[(32 * idx) + 128])].field_512 + 1:
            stor[stor8[address(mem[(32 * idx) + 128])].field_512 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor8', 8)))].field_0 = block.timestamp
            mem[32] = 8
            stor8[address(mem[(32 * idx) + 128])].field_768++
            if not stor8[address(mem[(32 * idx) + 128])].field_768 <= stor8[address(mem[(32 * idx) + 128])].field_768 + 1:
                s = sha3(sha3(address(mem[(32 * idx) + 128]), 8) + 3) + stor8[address(mem[(32 * idx) + 128])].field_768 + 1
                while sha3(sha3(address(mem[(32 * idx) + 128]), 8) + 3) + stor8[address(mem[(32 * idx) + 128])].field_768 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = sha3(address(mem[(32 * idx) + 128]), 8) + 3
            stor[stor8[address(mem[(32 * idx) + 128])].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor8', 8)))].field_0 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = _279
            emit Lock(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192], _279, address(_273));
            idx = idx + 1
            continue 
        s = sha3(sha3(address(mem[(32 * idx) + 128]), 8) + 2) + stor8[address(mem[(32 * idx) + 128])].field_512 + 1
        while sha3(sha3(address(mem[(32 * idx) + 128]), 8) + 2) + stor8[address(mem[(32 * idx) + 128])].field_512 > s:
            stor[s] = 0
            s = s + 1
            continue 
        stor[stor8[address(mem[(32 * idx) + 128])].field_512 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor8', 8)))].field_0 = block.timestamp
        mem[32] = 8
        stor8[address(mem[(32 * idx) + 128])].field_768++
        if not stor8[address(mem[(32 * idx) + 128])].field_768 > stor8[address(mem[(32 * idx) + 128])].field_768 + 1:
            mem[0] = sha3(address(mem[(32 * idx) + 128]), 8) + 3
            stor[stor8[address(mem[(32 * idx) + 128])].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor8', 8)))].field_0 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = _279
            emit Lock(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192], _279, address(_273));
            idx = idx + 1
            continue 
        s = sha3(sha3(address(mem[(32 * s) + 128]), 8) + 3) + stor8[address(mem[(32 * s) + 128])].field_768 + 1
        while sha3(sha3(address(mem[(32 * s) + 128]), 8) + 3) + stor8[address(mem[(32 * s) + 128])].field_768 > s:
            stor[s] = 0
            s = s + 1
            continue 
        mem[0] = sha3(address(mem[(32 * s) + 128]), 8) + 3
        stor[stor8[address(mem[(32 * s) + 128])].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 1))), 32))), ('name', 'stor8', 8)))].field_0 = mem[(32 * s) + (32 * arg2.length) + (32 * arg3.length) + 192]
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = mem[(32 * s) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = _279
        emit Lock(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192], _279, address(_273));
        s = s + 1
        continue 
}



}
