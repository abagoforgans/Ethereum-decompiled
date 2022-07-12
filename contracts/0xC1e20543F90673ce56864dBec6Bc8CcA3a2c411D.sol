contract main {




// =====================  Runtime code  =====================


const Now = block.timestamp


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
address owner;
mapping of uint8 stor4;
uint256 sub_c837d046;
mapping of struct lockAccounts;
uint8 stor8;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function mintingFinished() {
    return bool(uint8(stor3.field_168))
}

function name() {
    return name[0 len name.length]
}

function sub_125acb25(?) {
    return sub_125acb25[arg1].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function totalBurn() {
    return totalBurn
}

function showTimeLockValue(address arg1) {
    return lockAccounts[address(arg1)].field_256, 
           lockAccounts[address(arg1)].field_0,
           bool(lockAccounts[address(arg1)].field_512),
           lockAccounts[address(arg1)].field_768,
           lockAccounts[address(arg1)].field_1024
}

function lockAccounts(address arg1) {
    return lockAccounts[arg1].field_0, 
           lockAccounts[arg1].field_256,
           bool(lockAccounts[arg1].field_512),
           lockAccounts[arg1].field_768,
           lockAccounts[arg1].field_1024
}

function sub_576511c6(?) {
    return bool(stor4[address(arg1)])
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7eea8581(?) {
    return bool(stor8)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_c837d046(?) {
    return sub_c837d046
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_b2b9ed65(?) {
    require msg.sender == owner
    stor8 = 0
}

function unlockAllTokens() {
    require msg.sender == owner
    stor8 = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    uint8(stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit Pause()
}

function lock(address arg1) {
    require msg.sender == owner
    require not stor4[address(arg1)]
    stor4[address(arg1)] = 1
    return 1
}

function unlock(address arg1) {
    require msg.sender == owner
    require 1 == bool(stor4[address(arg1)])
    stor4[address(arg1)] = 0
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_168)
    uint8(stor3.field_168) = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_168)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function sub_60ee8fb9(?) {
    require msg.sender == owner
    require balanceOf[address(arg1)] >= arg2
    require arg3 >= block.timestamp
    lockAccounts[address(arg1)].field_256 = arg2
    lockAccounts[address(arg1)].field_0 = arg3
    lockAccounts[address(arg1)].field_512 = uint8(arg4)
    lockAccounts[address(arg1)].field_768 = arg5
    lockAccounts[address(arg1)].field_1024 = arg6
    return 1
}

function clearLock(address arg1) {
    require msg.sender == owner
    idx = 0
    while idx < sub_125acb25[address(arg1)].field_256:
        stor[(5 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_125acb25', 7)))].field_256 = 0
        mem[0] = sha3(address(arg1), 7) + 1
        stor[(5 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_125acb25', 7)))].field_0 = 0
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function addLock(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg2 > 0
    require arg3 > block.timestamp
    if arg3 > sub_125acb25[address(arg1)].field_0:
        sub_125acb25[address(arg1)].field_0 = arg3
    sub_125acb25[address(arg1)].field_256++
    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_125acb25', 7))) + (5 * sub_125acb25[address(arg1)].field_256)].field_0 = arg3
    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_125acb25', 7))) + (5 * sub_125acb25[address(arg1)].field_256)].field_256 = arg2
    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_125acb25', 7))) + (5 * sub_125acb25[address(arg1)].field_256)].field_512 = 0
    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_125acb25', 7))) + (5 * sub_125acb25[address(arg1)].field_256)].field_768 = 0
    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_125acb25', 7))) + (5 * sub_125acb25[address(arg1)].field_256)].field_1024 = 0
    emit 0xd358cc2d: arg3, arg2, arg1
}

function getLockAmount(address arg1) {
    if block.timestamp > sub_125acb25[address(arg1)].field_0:
        return 0
    s = 0
    t = 0
    t = 0
    idx = 0
    while idx < sub_125acb25[address(arg1)].field_256:
        mem[0] = sha3(address(arg1), 7) + 1
        if stor[(5 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_125acb25', 7)))].field_0 <= block.timestamp:
            s = s
            t = stor[(5 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_125acb25', 7)))].field_0
            t = stor[(5 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_125acb25', 7)))].field_256
            idx = idx + 1
            continue 
        require stor[(5 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_125acb25', 7)))].field_256 + s >= s
        s = stor[(5 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_125acb25', 7)))].field_256 + s
        t = stor[(5 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_125acb25', 7)))].field_0
        t = stor[(5 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_125acb25', 7)))].field_256
        idx = idx + 1
        continue 
    return s
}

function sub_ff749c37(?) {
    if lockAccounts[address(arg1)].field_512:
        if lockAccounts[address(arg1)].field_256 > 0:
            if block.timestamp >= lockAccounts[address(arg1)].field_0:
                require lockAccounts[address(arg1)].field_0 <= block.timestamp
                require lockAccounts[address(arg1)].field_1024 <= lockAccounts[address(arg1)].field_256
                lockAccounts[address(arg1)].field_256 -= lockAccounts[address(arg1)].field_1024
                require lockAccounts[address(arg1)].field_768
                require sub_c837d046 * lockAccounts[address(arg1)].field_768 / lockAccounts[address(arg1)].field_768 == sub_c837d046
                require sub_c837d046 * lockAccounts[address(arg1)].field_768
                if block.timestamp - lockAccounts[address(arg1)].field_0 / sub_c837d046 * lockAccounts[address(arg1)].field_768 >= 1:
                    if lockAccounts[address(arg1)].field_256 > 0:
                        require lockAccounts[address(arg1)].field_768
                        require sub_c837d046 * lockAccounts[address(arg1)].field_768 / lockAccounts[address(arg1)].field_768 == sub_c837d046
                        require sub_c837d046 * lockAccounts[address(arg1)].field_768
                        if not lockAccounts[address(arg1)].field_1024:
                            if 0 > lockAccounts[address(arg1)].field_256:
                                lockAccounts[address(arg1)].field_256 = 0
                            else:
                                require lockAccounts[address(arg1)].field_768
                                require sub_c837d046 * lockAccounts[address(arg1)].field_768 / lockAccounts[address(arg1)].field_768 == sub_c837d046
                                require sub_c837d046 * lockAccounts[address(arg1)].field_768
                                if not lockAccounts[address(arg1)].field_1024:
                                    require 0 <= lockAccounts[address(arg1)].field_256
                                else:
                                    require block.timestamp - lockAccounts[address(arg1)].field_0 / sub_c837d046 * lockAccounts[address(arg1)].field_768 * lockAccounts[address(arg1)].field_1024 / lockAccounts[address(arg1)].field_1024 == block.timestamp - lockAccounts[address(arg1)].field_0 / sub_c837d046 * lockAccounts[address(arg1)].field_768
                                    require block.timestamp - lockAccounts[address(arg1)].field_0 / sub_c837d046 * lockAccounts[address(arg1)].field_768 * lockAccounts[address(arg1)].field_1024 <= lockAccounts[address(arg1)].field_256
                                    lockAccounts[address(arg1)].field_256 += -1 * block.timestamp - lockAccounts[address(arg1)].field_0 / sub_c837d046 * lockAccounts[address(arg1)].field_768 * lockAccounts[address(arg1)].field_1024
                        else:
                            require block.timestamp - lockAccounts[address(arg1)].field_0 / sub_c837d046 * lockAccounts[address(arg1)].field_768 * lockAccounts[address(arg1)].field_1024 / lockAccounts[address(arg1)].field_1024 == block.timestamp - lockAccounts[address(arg1)].field_0 / sub_c837d046 * lockAccounts[address(arg1)].field_768
                            if block.timestamp - lockAccounts[address(arg1)].field_0 / sub_c837d046 * lockAccounts[address(arg1)].field_768 * lockAccounts[address(arg1)].field_1024 > lockAccounts[address(arg1)].field_256:
                                lockAccounts[address(arg1)].field_256 = 0
                            else:
                                require lockAccounts[address(arg1)].field_768
                                require sub_c837d046 * lockAccounts[address(arg1)].field_768 / lockAccounts[address(arg1)].field_768 == sub_c837d046
                                require sub_c837d046 * lockAccounts[address(arg1)].field_768
                                if not lockAccounts[address(arg1)].field_1024:
                                    require 0 <= lockAccounts[address(arg1)].field_256
                                else:
                                    require block.timestamp - lockAccounts[address(arg1)].field_0 / sub_c837d046 * lockAccounts[address(arg1)].field_768 * lockAccounts[address(arg1)].field_1024 / lockAccounts[address(arg1)].field_1024 == block.timestamp - lockAccounts[address(arg1)].field_0 / sub_c837d046 * lockAccounts[address(arg1)].field_768
                                    require block.timestamp - lockAccounts[address(arg1)].field_0 / sub_c837d046 * lockAccounts[address(arg1)].field_768 * lockAccounts[address(arg1)].field_1024 <= lockAccounts[address(arg1)].field_256
                                    lockAccounts[address(arg1)].field_256 += -1 * block.timestamp - lockAccounts[address(arg1)].field_0 / sub_c837d046 * lockAccounts[address(arg1)].field_768 * lockAccounts[address(arg1)].field_1024
                if lockAccounts[address(arg1)].field_256 <= 0:
                    lockAccounts[address(arg1)].field_512 = 0
                    lockAccounts[address(arg1)].field_0 = 0
                else:
                    require sub_c837d046
                    require lockAccounts[address(arg1)].field_768 * sub_c837d046 / sub_c837d046 == lockAccounts[address(arg1)].field_768
                    require lockAccounts[address(arg1)].field_768 * sub_c837d046
                    if not sub_c837d046:
                        require block.timestamp >= block.timestamp
                        require block.timestamp - lockAccounts[address(arg1)].field_0 % lockAccounts[address(arg1)].field_768 * sub_c837d046 <= block.timestamp
                        lockAccounts[address(arg1)].field_0 = block.timestamp - (block.timestamp - lockAccounts[address(arg1)].field_0 % lockAccounts[address(arg1)].field_768 * sub_c837d046)
                    else:
                        require lockAccounts[address(arg1)].field_768 * sub_c837d046 / sub_c837d046 == lockAccounts[address(arg1)].field_768
                        require (lockAccounts[address(arg1)].field_768 * sub_c837d046) + block.timestamp >= block.timestamp
                        require block.timestamp - lockAccounts[address(arg1)].field_0 % lockAccounts[address(arg1)].field_768 * sub_c837d046 <= (lockAccounts[address(arg1)].field_768 * sub_c837d046) + block.timestamp
                        lockAccounts[address(arg1)].field_0 = (lockAccounts[address(arg1)].field_768 * sub_c837d046) + block.timestamp - (block.timestamp - lockAccounts[address(arg1)].field_0 % lockAccounts[address(arg1)].field_768 * sub_c837d046)
            emit 0xc9d2e267: address(arg1), lockAccounts[address(arg1)].field_0, lockAccounts[address(arg1)].field_256
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require not stor4[msg.sender]
    if not stor8:
        if block.timestamp <= lockAccounts[address(msg.sender)].field_0:
            require lockAccounts[msg.sender].field_256 <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] - lockAccounts[msg.sender].field_256 >= arg2
    if block.timestamp > sub_125acb25[address(msg.sender)].field_0:
        require 0 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= arg2
    else:
        s = 0
        t = 0
        t = 0
        idx = 0
        while idx < sub_125acb25[address(msg.sender)].field_256:
            mem[0] = sha3(address(msg.sender), 7) + 1
            if stor[(5 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_125acb25', 7)))].field_0 <= block.timestamp:
                s = s
                t = stor[(5 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_125acb25', 7)))].field_0
                t = stor[(5 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_125acb25', 7)))].field_256
                idx = idx + 1
                continue 
            require stor[(5 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_125acb25', 7)))].field_256 + s >= s
            s = stor[(5 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_125acb25', 7)))].field_256 + s
            t = stor[(5 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_125acb25', 7)))].field_0
            t = stor[(5 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_125acb25', 7)))].field_256
            idx = idx + 1
            continue 
        require s <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - s >= arg2
    if lockAccounts[address(msg.sender)].field_512:
        if lockAccounts[address(msg.sender)].field_256 > 0:
            if block.timestamp >= lockAccounts[address(msg.sender)].field_0:
                require lockAccounts[address(msg.sender)].field_0 <= block.timestamp
                require lockAccounts[address(msg.sender)].field_1024 <= lockAccounts[address(msg.sender)].field_256
                lockAccounts[address(msg.sender)].field_256 -= lockAccounts[address(msg.sender)].field_1024
                require lockAccounts[address(msg.sender)].field_768
                require sub_c837d046 * lockAccounts[address(msg.sender)].field_768 / lockAccounts[address(msg.sender)].field_768 == sub_c837d046
                require sub_c837d046 * lockAccounts[address(msg.sender)].field_768
                if block.timestamp - lockAccounts[address(msg.sender)].field_0 / sub_c837d046 * lockAccounts[address(msg.sender)].field_768 >= 1:
                    if lockAccounts[address(msg.sender)].field_256 > 0:
                        require lockAccounts[address(msg.sender)].field_768
                        require sub_c837d046 * lockAccounts[address(msg.sender)].field_768 / lockAccounts[address(msg.sender)].field_768 == sub_c837d046
                        require sub_c837d046 * lockAccounts[address(msg.sender)].field_768
                        if not lockAccounts[address(msg.sender)].field_1024:
                            if 0 > lockAccounts[address(msg.sender)].field_256:
                                lockAccounts[address(msg.sender)].field_256 = 0
                            else:
                                require lockAccounts[address(msg.sender)].field_768
                                require sub_c837d046 * lockAccounts[address(msg.sender)].field_768 / lockAccounts[address(msg.sender)].field_768 == sub_c837d046
                                require sub_c837d046 * lockAccounts[address(msg.sender)].field_768
                                if not lockAccounts[address(msg.sender)].field_1024:
                                    require 0 <= lockAccounts[address(msg.sender)].field_256
                                else:
                                    require block.timestamp - lockAccounts[address(msg.sender)].field_0 / sub_c837d046 * lockAccounts[address(msg.sender)].field_768 * lockAccounts[address(msg.sender)].field_1024 / lockAccounts[address(msg.sender)].field_1024 == block.timestamp - lockAccounts[address(msg.sender)].field_0 / sub_c837d046 * lockAccounts[address(msg.sender)].field_768
                                    require block.timestamp - lockAccounts[address(msg.sender)].field_0 / sub_c837d046 * lockAccounts[address(msg.sender)].field_768 * lockAccounts[address(msg.sender)].field_1024 <= lockAccounts[address(msg.sender)].field_256
                                    lockAccounts[address(msg.sender)].field_256 += -1 * block.timestamp - lockAccounts[address(msg.sender)].field_0 / sub_c837d046 * lockAccounts[address(msg.sender)].field_768 * lockAccounts[address(msg.sender)].field_1024
                        else:
                            require block.timestamp - lockAccounts[address(msg.sender)].field_0 / sub_c837d046 * lockAccounts[address(msg.sender)].field_768 * lockAccounts[address(msg.sender)].field_1024 / lockAccounts[address(msg.sender)].field_1024 == block.timestamp - lockAccounts[address(msg.sender)].field_0 / sub_c837d046 * lockAccounts[address(msg.sender)].field_768
                            if block.timestamp - lockAccounts[address(msg.sender)].field_0 / sub_c837d046 * lockAccounts[address(msg.sender)].field_768 * lockAccounts[address(msg.sender)].field_1024 > lockAccounts[address(msg.sender)].field_256:
                                lockAccounts[address(msg.sender)].field_256 = 0
                            else:
                                require lockAccounts[address(msg.sender)].field_768
                                require sub_c837d046 * lockAccounts[address(msg.sender)].field_768 / lockAccounts[address(msg.sender)].field_768 == sub_c837d046
                                require sub_c837d046 * lockAccounts[address(msg.sender)].field_768
                                if not lockAccounts[address(msg.sender)].field_1024:
                                    require 0 <= lockAccounts[address(msg.sender)].field_256
                                else:
                                    require block.timestamp - lockAccounts[address(msg.sender)].field_0 / sub_c837d046 * lockAccounts[address(msg.sender)].field_768 * lockAccounts[address(msg.sender)].field_1024 / lockAccounts[address(msg.sender)].field_1024 == block.timestamp - lockAccounts[address(msg.sender)].field_0 / sub_c837d046 * lockAccounts[address(msg.sender)].field_768
                                    require block.timestamp - lockAccounts[address(msg.sender)].field_0 / sub_c837d046 * lockAccounts[address(msg.sender)].field_768 * lockAccounts[address(msg.sender)].field_1024 <= lockAccounts[address(msg.sender)].field_256
                                    lockAccounts[address(msg.sender)].field_256 += -1 * block.timestamp - lockAccounts[address(msg.sender)].field_0 / sub_c837d046 * lockAccounts[address(msg.sender)].field_768 * lockAccounts[address(msg.sender)].field_1024
                if lockAccounts[address(msg.sender)].field_256 <= 0:
                    lockAccounts[address(msg.sender)].field_512 = 0
                    lockAccounts[address(msg.sender)].field_0 = 0
                else:
                    require sub_c837d046
                    require lockAccounts[address(msg.sender)].field_768 * sub_c837d046 / sub_c837d046 == lockAccounts[address(msg.sender)].field_768
                    require lockAccounts[address(msg.sender)].field_768 * sub_c837d046
                    if not sub_c837d046:
                        require block.timestamp >= block.timestamp
                        require block.timestamp - lockAccounts[address(msg.sender)].field_0 % lockAccounts[address(msg.sender)].field_768 * sub_c837d046 <= block.timestamp
                        lockAccounts[address(msg.sender)].field_0 = block.timestamp - (block.timestamp - lockAccounts[address(msg.sender)].field_0 % lockAccounts[address(msg.sender)].field_768 * sub_c837d046)
                    else:
                        require lockAccounts[address(msg.sender)].field_768 * sub_c837d046 / sub_c837d046 == lockAccounts[address(msg.sender)].field_768
                        require (lockAccounts[address(msg.sender)].field_768 * sub_c837d046) + block.timestamp >= block.timestamp
                        require block.timestamp - lockAccounts[address(msg.sender)].field_0 % lockAccounts[address(msg.sender)].field_768 * sub_c837d046 <= (lockAccounts[address(msg.sender)].field_768 * sub_c837d046) + block.timestamp
                        lockAccounts[address(msg.sender)].field_0 = (lockAccounts[address(msg.sender)].field_768 * sub_c837d046) + block.timestamp - (block.timestamp - lockAccounts[address(msg.sender)].field_0 % lockAccounts[address(msg.sender)].field_768 * sub_c837d046)
            emit 0xc9d2e267: msg.sender, lockAccounts[address(msg.sender)].field_0, lockAccounts[address(msg.sender)].field_256
    if not stor8:
        require lockAccounts[msg.sender].field_256 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - lockAccounts[msg.sender].field_256 >= arg2
    if not arg1:
        require msg.sender == owner
        require arg2 <= totalSupply
        totalSupply -= arg2
    require not uint8(stor3.field_160)
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}



}
