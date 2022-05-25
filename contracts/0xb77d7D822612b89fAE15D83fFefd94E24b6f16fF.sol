contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of struct balanceOf;
mapping of struct stor6;
mapping of struct lockUserInfo;
uint8 stor8;

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

function user(address arg1) {
    return balanceOf[arg1].field_0, bool(uint8(balanceOf[arg1].field_256))
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

function lockUserInfo(address arg1) {
    require uint8(lockUserInfo[address(arg1)].field_0) <= 2
    return uint8(lockUserInfo[address(arg1)].field_0), 
           lockUserInfo[address(arg1)].field_512,
           lockUserInfo[address(arg1)].field_256
}

function allowance(address arg1, address arg2) {
    return balanceOf[address(arg1)][2][address(arg2)].field_0
}

function interRefreshLock() {
    return bool(stor8)
}

function _fallback() payable {
    revert
}

function setInterRefreshLock(bool arg1) {
    require msg.sender == owner
    stor8 = uint8(arg1)
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    uint8(stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
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
    balanceOf[msg.sender][2][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function mint(uint256 arg1) {
    require msg.sender == owner
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    require arg1 + balanceOf[address(stor0.field_0)].field_0 >= balanceOf[address(stor0.field_0)].field_0
    balanceOf[address(stor0.field_0)].field_0 += arg1
    emit Mint(arg1);
    return 1
}

function distribute(address arg1, uint256 arg2) {
    require msg.sender == owner
    require owner
    require arg1
    require arg2 <= balanceOf[address(stor0.field_0)].field_0
    require arg2 <= balanceOf[address(stor0.field_0)].field_0
    balanceOf[address(stor0.field_0)].field_0 -= arg2
    require arg2 + balanceOf[arg1].field_0 >= balanceOf[arg1].field_0
    balanceOf[address(arg1)].field_0 = arg2 + balanceOf[arg1].field_0
    emit Transfer(arg2, owner, arg1);
    return 1
}

function sub_e9dcba1b(?) {
    require msg.sender == owner
    require arg1 <= 2
    idx = 0
    while idx < stor6[arg1 << 248].field_0:
        mem[0] = sha3(arg1 << 248, 6)
        if stor6[arg1 << 248][idx].field_0 != arg2:
            idx = idx + 1
            continue 
    stor6[arg1 << 248].field_0++
    stor6[arg1 << 248][stor6[arg1 << 248].field_0].field_0 = arg2
    stor6[arg1 << 248].field_256++
    stor[('array', 1, ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor6', 6))) + Mask(251, 0, stor6[arg1 << 248].field_261)].field_0 = !(255 * 256^stor6[arg1 << 248].field_256 % 32) and stor[('array', 1, ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor6', 6))) + Mask(251, 0, stor6[arg1 << 248].field_261)].field_0 or 256^stor6[arg1 << 248].field_256 % 32 * arg3
}

function sub_642e52e4(?) {
    require arg1 <= 2
    if stor6[arg1 << 248].field_0:
        mem[128] = stor6[arg1 << 248].field_0
        idx = 128
        s = 0
        while (32 * stor6[arg1 << 248].field_0) + 96 > idx:
            mem[idx + 32] = stor6[arg1 << 248][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor6[arg1 << 248].field_256:
        mem[(32 * stor6[arg1 << 248].field_0) + 160] = uint8(stor6[arg1 << 248][1].field_0)
        idx = (32 * stor6[arg1 << 248].field_0) + 160
        s = 0
        while (32 * stor6[arg1 << 248].field_0) + (32 * stor6[arg1 << 248].field_256) + 128 > idx:
            mem[idx + 32] = stor('array', 1, ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor6', 6)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    mem[(32 * stor6[arg1 << 248].field_0) + (32 * stor6[arg1 << 248].field_256) + 256 len floor32(stor6[arg1 << 248].field_0)] = mem[128 len floor32(stor6[arg1 << 248].field_0)]
    mem[(64 * stor6[arg1 << 248].field_0) + (32 * stor6[arg1 << 248].field_256) + 256] = stor6[arg1 << 248].field_256
    mem[(64 * stor6[arg1 << 248].field_0) + (32 * stor6[arg1 << 248].field_256) + 288 len floor32(stor6[arg1 << 248].field_256)] = mem[(32 * stor6[arg1 << 248].field_0) + 160 len floor32(stor6[arg1 << 248].field_256)]
    return Array(len=stor6[arg1 << 248].field_0, data=mem[128 len floor32(stor6[arg1 << 248].field_0)], mem[(32 * stor6[arg1 << 248].field_0) + (32 * stor6[arg1 << 248].field_256) + floor32(stor6[arg1 << 248].field_0) + 256 len (32 * stor6[arg1 << 248].field_0) + (32 * stor6[arg1 << 248].field_256) + -floor32(stor6[arg1 << 248].field_0) + 32]), 
           (32 * stor6[arg1 << 248].field_0) + 96
}

function deleteLockDate(uint8 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 <= 2
    idx = 0
    while idx < stor6[arg1 << 248].field_0:
        mem[0] = sha3(arg1 << 248, 6)
        if stor6[arg1 << 248][idx].field_0 != arg2:
            idx = idx + 1
            continue 
        s = idx
        while s < stor6[arg1 << 248].field_0 - 1:
            require s + 1 < stor6[arg1 << 248].field_0
            require s < stor6[arg1 << 248].field_0
            stor6[arg1 << 248][s].field_0 = stor6[arg1 << 248][s].field_256
            require s + 1 < stor6[arg1 << 248].field_256
            require s < stor6[arg1 << 248].field_256
            mem[0] = sha3(arg1 << 248, 6) + 1
            stor[(0.03125 / s) + ('array', 1, ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0 = stor((0.03125 / s + 1) + ('array', 1, ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor6', 6))))[uint8(s + 1)] * 256^(s % 32) or !(255 * 256^(s % 32)) and stor[(0.03125 / s) + ('array', 1, ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0
            s = s + 1
            continue 
        require stor6[arg1 << 248].field_0 - 1 < stor6[arg1 << 248].field_0
        stor6[arg1 << 248][stor6[arg1 << 248].field_0].field_0 = 0
        stor6[arg1 << 248].field_0--
        if stor6[arg1 << 248].field_0 > stor6[arg1 << 248].field_0 - 1:
            idx = stor6[arg1 << 248].field_0 + sha3(sha3(arg1 << 248, 6)) - 1
            while sha3(sha3(arg1 << 248, 6)) + stor6[arg1 << 248].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        require stor6[arg1 << 248].field_256 - 1 < stor6[arg1 << 248].field_256
        stor[(0.03125 / stor6[arg1 << 248].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0 = !(255 * 256^(stor6[arg1 << 248].field_256 - 1 % 32)) and stor[(0.03125 / stor6[arg1 << 248].field_256 - 1) + ('array', 1, ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0
        stor6[arg1 << 248].field_256--
        if stor6[arg1 << 248].field_256 > stor6[arg1 << 248].field_256 - 1:
            idx = sha3(sha3(arg1 << 248, 6) + 1) + (stor6[arg1 << 248].field_256 + 30 / 32)
            while sha3(sha3(arg1 << 248, 6) + 1) + (stor6[arg1 << 248].field_256 + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
}

function setRefreshLockBalance(address arg1) {
    require msg.sender == owner
    require uint8(lockUserInfo[address(arg1)].field_0) <= 2
    if uint8(lockUserInfo[address(arg1)].field_0):
        require uint8(lockUserInfo[address(arg1)].field_0) <= 2
        idx = 0
        while idx < stor6[uint8(stor7[address(arg1)].field_0)].field_0:
            mem[0] = sha3(uint8(lockUserInfo[address(arg1)].field_0), 6)
            if block.timestamp >= stor6[uint8(stor7[address(arg1)].field_0)][idx].field_0:
                idx = idx + 1
                continue 
            require idx < stor6[uint8(stor7[address(arg1)].field_0)].field_256
            mem[0] = sha3(uint8(lockUserInfo[address(arg1)].field_0), 6) + 1
            if 0 >= stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]:
                idx = idx + 1
                continue 
            require idx < stor6[uint8(stor7[address(arg1)].field_0)].field_256
            if not stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]:
                if lockUserInfo[address(arg1)].field_256 != 0:
                    lockUserInfo[address(arg1)].field_256 = 0
            else:
                if not lockUserInfo[address(arg1)].field_512 / 100:
                    if lockUserInfo[address(arg1)].field_256 != 0:
                        lockUserInfo[address(arg1)].field_256 = 0
                else:
                    require stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(arg1)].field_512 / 100 / lockUserInfo[address(arg1)].field_512 / 100 == stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]
                    if stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(arg1)].field_512 / 100 != lockUserInfo[address(arg1)].field_256:
                        lockUserInfo[address(arg1)].field_256 = stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(arg1)].field_512 / 100
    if lockUserInfo[address(arg1)].field_256 != 0:
        lockUserInfo[address(arg1)].field_256 = 0
}

function sub_c0898a11(?) {
    require msg.sender == owner
    require arg2 <= 2
    uint8(lockUserInfo[address(arg1)].field_0) = arg2
    lockUserInfo[address(arg1)].field_512 = arg3
    require uint8(lockUserInfo[address(arg1)].field_0) <= 2
    if uint8(lockUserInfo[address(arg1)].field_0):
        require uint8(lockUserInfo[address(arg1)].field_0) <= 2
        idx = 0
        while idx < stor6[uint8(stor7[address(arg1)].field_0)].field_0:
            mem[0] = sha3(uint8(lockUserInfo[address(arg1)].field_0), 6)
            if block.timestamp >= stor6[uint8(stor7[address(arg1)].field_0)][idx].field_0:
                idx = idx + 1
                continue 
            require idx < stor6[uint8(stor7[address(arg1)].field_0)].field_256
            mem[0] = sha3(uint8(lockUserInfo[address(arg1)].field_0), 6) + 1
            if 0 >= stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]:
                idx = idx + 1
                continue 
            require idx < stor6[uint8(stor7[address(arg1)].field_0)].field_256
            if not stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]:
                if lockUserInfo[address(arg1)].field_256 != 0:
                    lockUserInfo[address(arg1)].field_256 = 0
            else:
                if not lockUserInfo[address(arg1)].field_512 / 100:
                    if lockUserInfo[address(arg1)].field_256 != 0:
                        lockUserInfo[address(arg1)].field_256 = 0
                else:
                    require stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(arg1)].field_512 / 100 / lockUserInfo[address(arg1)].field_512 / 100 == stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]
                    if stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(arg1)].field_512 / 100 != lockUserInfo[address(arg1)].field_256:
                        lockUserInfo[address(arg1)].field_256 = stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(arg1)].field_512 / 100
    if lockUserInfo[address(arg1)].field_256 != 0:
        lockUserInfo[address(arg1)].field_256 = 0
}

function useBalanceOf(address arg1) {
    require uint8(lockUserInfo[address(arg1)].field_0) <= 2
    if not uint8(lockUserInfo[address(arg1)].field_0):
        if 0 <= balanceOf[address(arg1)].field_0:
            return balanceOf[address(arg1)].field_0
    else:
        if uint8(lockUserInfo[address(arg1)].field_0) <= 2:
            idx = 0
            while idx < stor6[uint8(stor7[address(arg1)].field_0)].field_0:
                mem[0] = sha3(uint8(lockUserInfo[address(arg1)].field_0), 6)
                if block.timestamp >= stor6[uint8(stor7[address(arg1)].field_0)][idx].field_0:
                    idx = idx + 1
                    continue 
                require idx < stor6[uint8(stor7[address(arg1)].field_0)].field_256
                mem[0] = sha3(uint8(lockUserInfo[address(arg1)].field_0), 6) + 1
                if 0 >= stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]:
                    idx = idx + 1
                    continue 
                require idx < stor6[uint8(stor7[address(arg1)].field_0)].field_256
                if not stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]:
                    if 0 <= balanceOf[address(arg1)].field_0:
                        return balanceOf[address(arg1)].field_0
                else:
                    if not lockUserInfo[address(arg1)].field_512 / 100:
                        if 0 <= balanceOf[address(arg1)].field_0:
                            return balanceOf[address(arg1)].field_0
                    else:
                        if stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(arg1)].field_512 / 100 / lockUserInfo[address(arg1)].field_512 / 100 == stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]:
                            if stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(arg1)].field_512 / 100 <= balanceOf[address(arg1)].field_0:
                                return (balanceOf[address(arg1)].field_0 - (stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(arg1)].field_512 / 100))
                revert
            if 0 <= balanceOf[address(arg1)].field_0:
                return balanceOf[address(arg1)].field_0
    revert
}

function sub_97ce9e00(?) {
    require msg.sender == owner
    require owner
    require arg1
    require arg2 <= balanceOf[address(stor0.field_0)].field_0
    require arg2 <= balanceOf[address(stor0.field_0)].field_0
    balanceOf[address(stor0.field_0)].field_0 -= arg2
    require arg2 + balanceOf[arg1].field_0 >= balanceOf[arg1].field_0
    balanceOf[address(arg1)].field_0 = arg2 + balanceOf[arg1].field_0
    emit Transfer(arg2, owner, arg1);
    require msg.sender == owner
    uint8(lockUserInfo[address(arg1)].field_0) = 1
    lockUserInfo[address(arg1)].field_512 = balanceOf[address(arg1)].field_0
    require uint8(lockUserInfo[address(arg1)].field_0) <= 2
    if uint8(lockUserInfo[address(arg1)].field_0):
        require uint8(lockUserInfo[address(arg1)].field_0) <= 2
        idx = 0
        while idx < stor6[uint8(stor7[address(arg1)].field_0)].field_0:
            mem[0] = sha3(uint8(lockUserInfo[address(arg1)].field_0), 6)
            if block.timestamp >= stor6[uint8(stor7[address(arg1)].field_0)][idx].field_0:
                idx = idx + 1
                continue 
            require idx < stor6[uint8(stor7[address(arg1)].field_0)].field_256
            mem[0] = sha3(uint8(lockUserInfo[address(arg1)].field_0), 6) + 1
            if 0 >= stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]:
                idx = idx + 1
                continue 
            require idx < stor6[uint8(stor7[address(arg1)].field_0)].field_256
            if not stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]:
                if lockUserInfo[address(arg1)].field_256 != 0:
                    lockUserInfo[address(arg1)].field_256 = 0
            else:
                if not lockUserInfo[address(arg1)].field_512 / 100:
                    if lockUserInfo[address(arg1)].field_256 != 0:
                        lockUserInfo[address(arg1)].field_256 = 0
                else:
                    require stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(arg1)].field_512 / 100 / lockUserInfo[address(arg1)].field_512 / 100 == stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]
                    if stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(arg1)].field_512 / 100 != lockUserInfo[address(arg1)].field_256:
                        lockUserInfo[address(arg1)].field_256 = stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(arg1)].field_512 / 100
    if lockUserInfo[address(arg1)].field_256 != 0:
        lockUserInfo[address(arg1)].field_256 = 0
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require msg.sender
    require arg1
    require arg2 <= balanceOf[address(msg.sender)].field_0
    require not uint8(balanceOf[address(msg.sender)].field_256)
    if lockUserInfo[address(msg.sender)].field_256 > 0:
        if stor8:
            require uint8(lockUserInfo[address(msg.sender)].field_0) <= 2
            if uint8(lockUserInfo[address(msg.sender)].field_0):
                require uint8(lockUserInfo[address(msg.sender)].field_0) <= 2
                idx = 0
                while idx < stor6[uint8(stor7[address(msg.sender)].field_0)].field_0:
                    mem[0] = sha3(uint8(lockUserInfo[address(msg.sender)].field_0), 6)
                    if block.timestamp >= stor6[uint8(stor7[address(msg.sender)].field_0)][idx].field_0:
                        idx = idx + 1
                        continue 
                    require idx < stor6[uint8(stor7[address(msg.sender)].field_0)].field_256
                    mem[0] = sha3(uint8(lockUserInfo[address(msg.sender)].field_0), 6) + 1
                    if 0 >= stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]:
                        idx = idx + 1
                        continue 
                    require idx < stor6[uint8(stor7[address(msg.sender)].field_0)].field_256
                    if not stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]:
                        if lockUserInfo[address(msg.sender)].field_256 != 0:
                            lockUserInfo[address(msg.sender)].field_256 = 0
                    else:
                        if not lockUserInfo[address(msg.sender)].field_512 / 100:
                            if lockUserInfo[address(msg.sender)].field_256 != 0:
                                lockUserInfo[address(msg.sender)].field_256 = 0
                        else:
                            require stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(msg.sender)].field_512 / 100 / lockUserInfo[address(msg.sender)].field_512 / 100 == stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]
                            if stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(msg.sender)].field_512 / 100 != lockUserInfo[address(msg.sender)].field_256:
                                lockUserInfo[address(msg.sender)].field_256 = stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(msg.sender)].field_512 / 100
                    require arg2 + lockUserInfo[address(msg.sender)].field_256 >= lockUserInfo[address(msg.sender)].field_256
                    require balanceOf[address(msg.sender)].field_0 >= arg2 + lockUserInfo[address(msg.sender)].field_256
                    require arg2 <= balanceOf[msg.sender].field_0
                    balanceOf[msg.sender].field_0 -= arg2
                    require arg2 + balanceOf[arg1].field_0 >= balanceOf[arg1].field_0
                    balanceOf[address(arg1)].field_0 = arg2 + balanceOf[arg1].field_0
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
            if lockUserInfo[address(msg.sender)].field_256 != 0:
                lockUserInfo[address(msg.sender)].field_256 = 0
        require arg2 + lockUserInfo[address(msg.sender)].field_256 >= lockUserInfo[address(msg.sender)].field_256
        require balanceOf[address(msg.sender)].field_0 >= arg2 + lockUserInfo[address(msg.sender)].field_256
    require arg2 <= balanceOf[msg.sender].field_0
    balanceOf[msg.sender].field_0 -= arg2
    require arg2 + balanceOf[arg1].field_0 >= balanceOf[arg1].field_0
    balanceOf[address(arg1)].field_0 = arg2 + balanceOf[arg1].field_0
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_c7597a09(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        require msg.sender == owner
        require arg1 <= 2
        uint8(lockUserInfo[address(mem[(32 * idx) + 128])].field_0) = arg1
        lockUserInfo[address(mem[(32 * idx) + 128])].field_512 = balanceOf[mem[(32 * idx) + 140 len 20]].field_0
        require uint8(lockUserInfo[address(mem[(32 * idx) + 128])].field_0) <= 2
        if uint8(lockUserInfo[address(mem[(32 * idx) + 128])].field_0):
            require uint8(lockUserInfo[address(mem[(32 * idx) + 128])].field_0) <= 2
            s = 0
            while s < stor6[uint8(stor7[address(mem[(32 * idx) + 128])].field_0)].field_0:
                mem[0] = sha3(uint8(lockUserInfo[address(mem[(32 * idx) + 128])].field_0), 6)
                if block.timestamp >= stor6[uint8(stor7[address(mem[(32 * idx) + 128])].field_0)][s].field_0:
                    s = s + 1
                    continue 
                require s < stor6[uint8(stor7[address(mem[(32 * idx) + 128])].field_0)].field_256
                mem[0] = sha3(uint8(lockUserInfo[address(mem[(32 * idx) + 128])].field_0), 6) + 1
                if 0 >= stor((0.03125 / s) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(s)]:
                    s = s + 1
                    continue 
                require s < stor6[uint8(stor7[address(mem[(32 * idx) + 128])].field_0)].field_256
                if not stor((0.03125 / s) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(s)]:
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 7
                    if lockUserInfo[address(mem[(32 * idx) + 128])].field_256 != 0:
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 7
                        lockUserInfo[address(mem[(32 * idx) + 128])].field_256 = 0
                else:
                    if not lockUserInfo[address(mem[(32 * idx) + 128])].field_512 / 100:
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 7
                        if lockUserInfo[address(mem[(32 * idx) + 128])].field_256 != 0:
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 7
                            lockUserInfo[address(mem[(32 * idx) + 128])].field_256 = 0
                    else:
                        require stor((0.03125 / s) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(s)] * lockUserInfo[address(mem[(32 * idx) + 128])].field_512 / 100 / lockUserInfo[address(mem[(32 * idx) + 128])].field_512 / 100 == stor((0.03125 / s) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(s)]
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 7
                        if stor((0.03125 / s) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(s)] * lockUserInfo[address(mem[(32 * idx) + 128])].field_512 / 100 != lockUserInfo[address(mem[(32 * idx) + 128])].field_256:
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 7
                            lockUserInfo[address(mem[(32 * idx) + 128])].field_256 = stor((0.03125 / s) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32))), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(s)] * lockUserInfo[address(mem[(32 * idx) + 128])].field_512 / 100
                idx = idx + 1
                continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        if lockUserInfo[address(mem[(32 * idx) + 128])].field_256 != 0:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 7
            lockUserInfo[address(mem[(32 * idx) + 128])].field_256 = 0
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
    require arg1
    require arg2
    require arg3 <= balanceOf[address(arg1)].field_0
    require not uint8(balanceOf[address(arg1)].field_256)
    if lockUserInfo[address(arg1)].field_256 > 0:
        if stor8:
            require uint8(lockUserInfo[address(arg1)].field_0) <= 2
            if uint8(lockUserInfo[address(arg1)].field_0):
                require uint8(lockUserInfo[address(arg1)].field_0) <= 2
                idx = 0
                while idx < stor6[uint8(stor7[address(arg1)].field_0)].field_0:
                    mem[0] = sha3(uint8(lockUserInfo[address(arg1)].field_0), 6)
                    if block.timestamp >= stor6[uint8(stor7[address(arg1)].field_0)][idx].field_0:
                        idx = idx + 1
                        continue 
                    require idx < stor6[uint8(stor7[address(arg1)].field_0)].field_256
                    mem[0] = sha3(uint8(lockUserInfo[address(arg1)].field_0), 6) + 1
                    if 0 >= stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]:
                        idx = idx + 1
                        continue 
                    require idx < stor6[uint8(stor7[address(arg1)].field_0)].field_256
                    if not stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]:
                        if lockUserInfo[address(arg1)].field_256 != 0:
                            lockUserInfo[address(arg1)].field_256 = 0
                    else:
                        if not lockUserInfo[address(arg1)].field_512 / 100:
                            if lockUserInfo[address(arg1)].field_256 != 0:
                                lockUserInfo[address(arg1)].field_256 = 0
                        else:
                            require stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(arg1)].field_512 / 100 / lockUserInfo[address(arg1)].field_512 / 100 == stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)]
                            if stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(arg1)].field_512 / 100 != lockUserInfo[address(arg1)].field_256:
                                lockUserInfo[address(arg1)].field_256 = stor((0.03125 / idx) + ('array', 1, ('map', ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor6', 6))))[uint8(idx)] * lockUserInfo[address(arg1)].field_512 / 100
                    require arg3 + lockUserInfo[address(arg1)].field_256 >= lockUserInfo[address(arg1)].field_256
                    require balanceOf[address(arg1)].field_0 >= arg3 + lockUserInfo[address(arg1)].field_256
                    require arg3 <= balanceOf[address(arg1)][2][msg.sender].field_0
                    require arg3 <= balanceOf[address(arg1)].field_0
                    balanceOf[address(arg1)].field_0 -= arg3
                    require arg3 + balanceOf[arg2].field_0 >= balanceOf[arg2].field_0
                    balanceOf[address(arg2)].field_0 = arg3 + balanceOf[arg2].field_0
                    require arg3 <= balanceOf[arg1][2][msg.sender].field_0
                    balanceOf[address(arg1)][2][msg.sender].field_0 = balanceOf[arg1][2][msg.sender].field_0 - arg3
                    emit Transfer(arg3, arg1, arg2);
                    return 1
            if lockUserInfo[address(arg1)].field_256 != 0:
                lockUserInfo[address(arg1)].field_256 = 0
        require arg3 + lockUserInfo[address(arg1)].field_256 >= lockUserInfo[address(arg1)].field_256
        require balanceOf[address(arg1)].field_0 >= arg3 + lockUserInfo[address(arg1)].field_256
    require arg3 <= balanceOf[address(arg1)][2][msg.sender].field_0
    require arg3 <= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 -= arg3
    require arg3 + balanceOf[arg2].field_0 >= balanceOf[arg2].field_0
    balanceOf[address(arg2)].field_0 = arg3 + balanceOf[arg2].field_0
    require arg3 <= balanceOf[arg1][2][msg.sender].field_0
    balanceOf[address(arg1)][2][msg.sender].field_0 = balanceOf[arg1][2][msg.sender].field_0 - arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
