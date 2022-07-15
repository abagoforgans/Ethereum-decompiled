contract main {




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
    return bool(balanceOf[address(arg1)].field_256)
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
    require not balanceOf[address(arg1)].field_256
    balanceOf[address(arg1)].field_256 = 1
    return 1
}

function unlock(address arg1) {
    require msg.sender == owner
    require bool(balanceOf[address(arg1)].field_256) == 1
    balanceOf[address(arg1)].field_256 = 0
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
    stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor8', 8))) + arg2].field_0 = 0
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
    require arg3 > 0
    require arg3 <= 100
    require arg1 <= 11
    idx = 0
    while idx < stor7[arg1 << 248].field_0:
        mem[0] = sha3(arg1 << 248, 7)
        require stor7[arg1 << 248][idx].field_0 != arg2
        idx = idx + 1
        continue 
    stor7[arg1 << 248].field_0++
    stor7[arg1 << 248][stor7[arg1 << 248].field_0].field_0 = arg2
    stor7[arg1 << 248].field_256++
    stor[('array', 1, ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor7', 7))) + stor7[arg1 << 248].field_256].field_0 = arg3
}

function lockTypeInfoGroup(uint8 arg1) {
    require arg1 <= 11
    if stor7[arg1 << 248].field_0:
        mem[128] = stor7[arg1 << 248].field_0
        idx = 128
        s = 0
        while (32 * stor7[arg1 << 248].field_0) + 96 > idx:
            mem[idx + 32] = stor7[arg1 << 248][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor7[arg1 << 248].field_256:
        mem[(32 * stor7[arg1 << 248].field_0) + 160] = stor7[arg1 << 248][1].field_0
        idx = (32 * stor7[arg1 << 248].field_0) + 160
        s = 0
        while (32 * stor7[arg1 << 248].field_0) + (32 * stor7[arg1 << 248].field_256) + 128 > idx:
            mem[idx + 32] = stor7[arg1 << 248][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor7[arg1 << 248].field_0) + (32 * stor7[arg1 << 248].field_256) + 256 len floor32(stor7[arg1 << 248].field_0)] = mem[128 len floor32(stor7[arg1 << 248].field_0)]
    mem[(64 * stor7[arg1 << 248].field_0) + (32 * stor7[arg1 << 248].field_256) + 256] = stor7[arg1 << 248].field_256
    mem[(64 * stor7[arg1 << 248].field_0) + (32 * stor7[arg1 << 248].field_256) + 288 len floor32(stor7[arg1 << 248].field_256)] = mem[(32 * stor7[arg1 << 248].field_0) + 160 len floor32(stor7[arg1 << 248].field_256)]
    return Array(len=stor7[arg1 << 248].field_0, data=mem[128 len floor32(stor7[arg1 << 248].field_0)], mem[(32 * stor7[arg1 << 248].field_0) + (32 * stor7[arg1 << 248].field_256) + floor32(stor7[arg1 << 248].field_0) + 256 len (32 * stor7[arg1 << 248].field_0) + (32 * stor7[arg1 << 248].field_256) + -floor32(stor7[arg1 << 248].field_0) + 32]), 
           (32 * stor7[arg1 << 248].field_0) + 96
}

function deleteLockDate(uint8 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 <= 11
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
    if stor7[arg1 << 248].field_0 > stor7[arg1 << 248].field_0 - 1:
        idx = stor7[arg1 << 248].field_0 - 1
        while stor7[arg1 << 248].field_0 > idx:
            stor7[arg1 << 248][idx].field_0 = 0
            idx = idx + 1
            continue 
    require stor7[arg1 << 248].field_256 - 1 < stor7[arg1 << 248].field_256
    stor[('array', 1, ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor7', 7))) + stor7[arg1 << 248].field_256].field_0 = 0
    stor7[arg1 << 248].field_256--
    if stor7[arg1 << 248].field_256 > stor7[arg1 << 248].field_256 - 1:
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
        if not stor8[address(arg1)][idx + 1].field_0:
            require s >= s
            mem[0] = arg1
            mem[32] = 8
            idx = idx + 1
            s = s
            continue 
        require stor8[address(arg1)][idx + 1].field_0
        require stor8[address(arg1)][idx + 1].field_0 * v / stor8[address(arg1)][idx + 1].field_0 == v
        require s + (stor8[address(arg1)][idx + 1].field_0 * v / 100) >= s
        mem[0] = arg1
        mem[32] = 8
        idx = idx + 1
        s = s + (stor8[address(arg1)][idx + 1].field_0 * v / 100)
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
        if not stor8[address(arg1)][idx + 1].field_0:
            require s >= s
            mem[0] = arg1
            mem[32] = 8
            idx = idx + 1
            s = s
            continue 
        require stor8[address(arg1)][idx + 1].field_0
        require stor8[address(arg1)][idx + 1].field_0 * v / stor8[address(arg1)][idx + 1].field_0 == v
        require s + (stor8[address(arg1)][idx + 1].field_0 * v / 100) >= s
        mem[0] = arg1
        mem[32] = 8
        idx = idx + 1
        s = s + (stor8[address(arg1)][idx + 1].field_0 * v / 100)
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
    require not balanceOf[address(arg1)].field_256
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
        if not stor8[address(arg1)][idx + 1].field_0:
            require s >= s
            mem[0] = arg1
            mem[32] = 8
            idx = idx + 1
            s = s
            continue 
        require stor8[address(arg1)][idx + 1].field_0
        require stor8[address(arg1)][idx + 1].field_0 * v / stor8[address(arg1)][idx + 1].field_0 == v
        require s + (stor8[address(arg1)][idx + 1].field_0 * v / 100) >= s
        mem[0] = arg1
        mem[32] = 8
        idx = idx + 1
        s = s + (stor8[address(arg1)][idx + 1].field_0 * v / 100)
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
    require not balanceOf[address(msg.sender)].field_256
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
        if not stor8[address(msg.sender)][idx + 1].field_0:
            require s >= s
            mem[0] = msg.sender
            mem[32] = 8
            idx = idx + 1
            s = s
            continue 
        require stor8[address(msg.sender)][idx + 1].field_0
        require stor8[address(msg.sender)][idx + 1].field_0 * v / stor8[address(msg.sender)][idx + 1].field_0 == v
        require s + (stor8[address(msg.sender)][idx + 1].field_0 * v / 100) >= s
        mem[0] = msg.sender
        mem[32] = 8
        idx = idx + 1
        s = s + (stor8[address(msg.sender)][idx + 1].field_0 * v / 100)
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
    require arg1 <= 11
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
            if not stor8[address(mem[(32 * idx) + 128])][s + 1].field_0:
                require t >= t
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 8
                s = s + 1
                t = t
                continue 
            require stor8[address(mem[(32 * idx) + 128])][s + 1].field_0
            require stor8[address(mem[(32 * idx) + 128])][s + 1].field_0 * w / stor8[address(mem[(32 * idx) + 128])][s + 1].field_0 == w
            require t + (stor8[address(mem[(32 * idx) + 128])][s + 1].field_0 * w / 100) >= t
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 8
            s = s + 1
            t = t + (stor8[address(mem[(32 * idx) + 128])][s + 1].field_0 * w / 100)
            continue 
        require t <= balanceOf[address(mem[(32 * idx) + 128])].field_0
        require idx < arg3.length
        require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(mem[(32 * idx) + 128])].field_0 - t
        require idx < arg2.length
        _109 = mem[(32 * idx) + 128]
        require idx < arg3.length
        require idx < arg4.length
        _115 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
        require arg1 <= 11
        stor8[mem[(32 * idx) + 140 len 20]].field_0++
        stor8[mem[(32 * idx) + 140 len 20]][stor8[mem[(32 * idx) + 140 len 20]].field_0].field_0 = arg1
        stor8[mem[(32 * idx) + 140 len 20]][stor8[mem[(32 * idx) + 140 len 20]].field_0].field_8 = 0
        stor8[address(mem[(32 * idx) + 128])].field_256++
        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor8', 8))) + stor8[address(mem[(32 * idx) + 128])].field_256].field_0 = mem[(32 * idx) + (32 * arg2.length) + 160]
        stor8[address(mem[(32 * idx) + 128])].field_512++
        stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor8', 8))) + stor8[address(mem[(32 * idx) + 128])].field_512].field_0 = block.timestamp
        mem[32] = 8
        stor8[address(mem[(32 * idx) + 128])].field_768++
        mem[0] = sha3(address(mem[(32 * idx) + 128]), 8) + 3
        stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor8', 8))) + stor8[address(mem[(32 * idx) + 128])].field_768].field_0 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = _115
        emit Lock(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192], _115, address(_109));
        idx = idx + 1
        continue 
}



}
