contract main {




// =====================  Runtime code  =====================


#
#  - transferLocked(address arg1, uint256 arg2, uint256 arg3, uint256[] arg4)
#
const name = 'LIMUSK'

const decimals = 18

const symbol = 'LMK'

const msgSender = msg.sender

const ROLE_LOCKUP = 'lockup'

const INITIAL_SUPPLY = 10000000000 * 10^18

const ROLE_MINT = 'mint'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
mapping of uint8 stor4;
uint8 stor5;
uint8 stor5; offset 8
uint256 stor5; offset 8
array of struct grantedLocks;
mapping of uint8 stor99;

function mintingFinished() {
    return bool(uint8(stor5.field_0))
}

function grantedLocks(address arg1, uint256 arg2) {
    require arg2 < uint256(grantedLocks[arg1].field_0)
    return uint256(grantedLocks[arg1][arg2].field_0), uint256(grantedLocks[arg1][arg2].field_256)
}

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(uint8(stor5.field_8))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor5.field_8)
    Mask(248, 0, stor5.field_8) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor5.field_8)
    Mask(248, 0, stor5.field_8) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function startMinting() {
    require msg.sender == owner
    require uint8(stor5.field_0)
    uint8(stor5.field_0) = 0
    emit MintStarted()
    return 1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor5.field_0)
    uint8(stor5.field_0) = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor5.field_8)
    allowance[address(msg.sender)][address(arg1)] = arg2
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
    require not uint8(stor5.field_8)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor5.field_8)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    if owner != msg.sender:
        mem[160 len 0] = None
        require stor4[mem[160 len 4]][address(msg.sender)]
    require not uint8(stor5.field_0)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function lock(address arg1, uint256 arg2, uint256 arg3) {
    if owner != msg.sender:
        mem[160 len 0] = None
        require stor4[mem[160 len 6]][address(msg.sender)]
    require arg2 > 0
    require arg3 > block.timestamp
    uint256(grantedLocks[address(arg1)].field_0)++
    uint256(grantedLocks[address(arg1)][uint256(grantedLocks[address(arg1)].field_0)].field_0) = arg2
    uint256(grantedLocks[address(arg1)][uint256(grantedLocks[address(arg1)].field_0)].field_256) = arg3
    emit Locked(address(arg1), arg2, arg3);
}

function unlock(address arg1) {
    if owner != msg.sender:
        mem[160 len 0] = None
        require stor4[mem[160 len 6]][address(msg.sender)]
    require uint256(grantedLocks[address(arg1)].field_0) > 0
    uint256(grantedLocks[address(arg1)].field_0) = 0
    idx = 0
    while 2 * uint256(grantedLocks[address(arg1)].field_0) > idx:
        uint256(grantedLocks[address(arg1)][idx].field_0) = 0
        uint256(grantedLocks[address(arg1)][idx].field_256) = 0
        idx = idx + 2
        continue 
    emit UnlockedAll(arg1);
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 4
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function addAdmin(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == owner
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 4
    stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)] = 1
    emit RoleAdded(Array(len=arg2.length, data=arg2[all]), arg1);
}

function removeAdmin(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == owner
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 4
    stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)] = 0
    emit RoleRemoved(Array(len=arg2.length, data=arg2[all]), arg1);
}

function isAdmin(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 4
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 4
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function lockedAmountOf(address arg1) {
    require arg1
    if uint256(grantedLocks[address(arg1)].field_0) <= 0:
        return 0
    idx = 0
    s = 0
    while idx < uint256(grantedLocks[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 6)
        if block.timestamp >= uint256(grantedLocks[address(arg1)][idx].field_256):
            idx = idx + 1
            s = s
            continue 
        require idx < uint256(grantedLocks[address(arg1)].field_0)
        mem[0] = sha3(address(arg1), 6)
        require s + uint256(grantedLocks[address(arg1)][idx].field_0) >= s
        idx = idx + 1
        s = s + uint256(grantedLocks[address(arg1)][idx].field_0)
        continue 
    return s
}

function claimAdmin(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    emit RoleRemovedAll(Array(len=arg1.length, data=arg1[all]));
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][address(msg.sender)] = 1
    emit RoleAdded(Array(len=arg1.length, data=arg1[all]), msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor5.field_8)
    require msg.sender
    if uint256(grantedLocks[address(msg.sender)].field_0) <= 0:
        require balanceOf[address(msg.sender)] > 0
        require 0 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= arg2
    else:
        idx = 0
        s = 0
        while idx < uint256(grantedLocks[address(msg.sender)].field_0):
            mem[0] = sha3(address(msg.sender), 6)
            if block.timestamp >= uint256(grantedLocks[address(msg.sender)][idx].field_256):
                idx = idx + 1
                s = s
                continue 
            require idx < uint256(grantedLocks[address(msg.sender)].field_0)
            mem[0] = sha3(address(msg.sender), 6)
            require s + uint256(grantedLocks[address(msg.sender)][idx].field_0) >= s
            idx = idx + 1
            s = s + uint256(grantedLocks[address(msg.sender)][idx].field_0)
            continue 
        require balanceOf[address(msg.sender)] > s
        require s <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - s >= arg2
    require arg1
    require arg1 != msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor5.field_8)
    require arg1
    if uint256(grantedLocks[address(arg1)].field_0) <= 0:
        require balanceOf[address(arg1)] > 0
        require 0 <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] >= arg3
    else:
        idx = 0
        s = 0
        while idx < uint256(grantedLocks[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 6)
            if block.timestamp >= uint256(grantedLocks[address(arg1)][idx].field_256):
                idx = idx + 1
                s = s
                continue 
            require idx < uint256(grantedLocks[address(arg1)].field_0)
            mem[0] = sha3(address(arg1), 6)
            require s + uint256(grantedLocks[address(arg1)][idx].field_0) >= s
            idx = idx + 1
            s = s + uint256(grantedLocks[address(arg1)][idx].field_0)
            continue 
        require balanceOf[address(arg1)] > s
        require s <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] - s >= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferMultiply(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _34 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require not uint8(stor5.field_8)
        require msg.sender
        if uint256(grantedLocks[address(msg.sender)].field_0) <= 0:
            require balanceOf[address(msg.sender)] > 0
            require 0 <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] >= mem[(32 * idx) + (32 * arg1.length) + 160]
        else:
            s = 0
            t = 0
            while s < uint256(grantedLocks[address(msg.sender)].field_0):
                mem[0] = sha3(address(msg.sender), 6)
                if block.timestamp >= uint256(grantedLocks[address(msg.sender)][s].field_256):
                    s = s + 1
                    t = t
                    continue 
                require s < uint256(grantedLocks[address(msg.sender)].field_0)
                mem[0] = sha3(address(msg.sender), 6)
                require t + uint256(grantedLocks[address(msg.sender)][s].field_0) >= t
                s = s + 1
                t = t + uint256(grantedLocks[address(msg.sender)][s].field_0)
                continue 
            require balanceOf[address(msg.sender)] > t
            require t <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] - t >= mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + 140 len 20] != msg.sender
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_34));
        idx = idx + 1
        continue 
    return 1
}

function transferLockedFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256[] arg5) {
    mem[96] = arg5.length
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require not uint8(stor5.field_8)
    require arg1
    if uint256(grantedLocks[address(arg1)].field_0) <= 0:
        mem[0] = arg1
        mem[32] = 0
        require balanceOf[address(arg1)] > 0
        require 0 <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] >= arg3
        mem[64] = (32 * arg5.length) + 192
        mem[(32 * arg5.length) + 128] = 6
        mem[(32 * arg5.length) + 160] = 'lockup'
        if msg.sender == owner:
            require arg3 >= arg4
            if arg5.length > 0:
                require arg5.length
                if not arg5.length:
                    require 0 <= arg4
                    if arg4 / arg5.length > 0:
                        idx = 0
                        s = arg4 / mem[96]
                        while idx < arg5.length:
                            if idx != arg5.length - 1:
                                require idx < mem[96]
                                _1370 = mem[(32 * idx) + 128]
                                _1376 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1376] = 6
                                mem[_1376 + 32] = 'lockup'
                                if msg.sender == owner:
                                    require s > 0
                                    require _1370 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _1402 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1402] = s
                                    mem[_1402 + 32] = _1370
                                else:
                                    u = _1376 + 32
                                    v = mem[64]
                                    t = mem[_1376]
                                    while t >= 32:
                                        mem[v] = mem[u]
                                        u = u + 32
                                        v = v + 32
                                        t = t - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_1376])] = mem[_1376 + floor32(mem[_1376]) + -(mem[_1376] % 32) + 64 len mem[_1376] % 32] or Mask(8 * -(mem[_1376] % 32) + 32, -(8 * -(mem[_1376] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1376])])
                                    require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                    require s > 0
                                    require _1370 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _2770 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2770] = s
                                    mem[_2770 + 32] = _1370
                                uint256(grantedLocks[address(arg2)].field_0)++
                                mem[0] = sha3(address(arg2), 6)
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _1370
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = s
                                mem[mem[64] + 64] = _1370
                                emit Locked(address(arg2), s, _1370);
                                idx = idx + 1
                                s = s
                                continue 
                            if arg4 <= 0:
                                require idx < mem[96]
                                _1377 = mem[(32 * idx) + 128]
                                _1379 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1379] = 6
                                mem[_1379 + 32] = 'lockup'
                                if msg.sender == owner:
                                    require s > 0
                                    require _1377 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _1432 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1432] = s
                                    mem[_1432 + 32] = _1377
                                else:
                                    u = _1379 + 32
                                    v = mem[64]
                                    t = mem[_1379]
                                    while t >= 32:
                                        mem[v] = mem[u]
                                        u = u + 32
                                        v = v + 32
                                        t = t - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_1379])] = mem[_1379 + floor32(mem[_1379]) + -(mem[_1379] % 32) + 64 len mem[_1379] % 32] or Mask(8 * -(mem[_1379] % 32) + 32, -(8 * -(mem[_1379] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1379])])
                                    require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                    require s > 0
                                    require _1377 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _2777 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2777] = s
                                    mem[_2777 + 32] = _1377
                                uint256(grantedLocks[address(arg2)].field_0)++
                                mem[0] = sha3(address(arg2), 6)
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _1377
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = s
                                mem[mem[64] + 64] = _1377
                                emit Locked(address(arg2), s, _1377);
                                idx = idx + 1
                                s = s
                                continue 
                            require s + arg4 >= s
                            require idx < mem[96]
                            _1410 = mem[(32 * idx) + 128]
                            _1438 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1438] = 6
                            mem[_1438 + 32] = 'lockup'
                            if msg.sender == owner:
                                require s + arg4 > 0
                                require _1410 > block.timestamp
                                mem[0] = arg2
                                mem[32] = 6
                                _1482 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1482] = s + arg4
                                mem[_1482 + 32] = _1410
                            else:
                                u = _1438 + 32
                                v = mem[64]
                                t = mem[_1438]
                                while t >= 32:
                                    mem[v] = mem[u]
                                    u = u + 32
                                    v = v + 32
                                    t = t - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_1438])] = mem[_1438 + floor32(mem[_1438]) + -(mem[_1438] % 32) + 64 len mem[_1438] % 32] or Mask(8 * -(mem[_1438] % 32) + 32, -(8 * -(mem[_1438] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1438])])
                                require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                require s + arg4 > 0
                                require _1410 > block.timestamp
                                mem[0] = arg2
                                mem[32] = 6
                                _2784 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2784] = s + arg4
                                mem[_2784 + 32] = _1410
                            uint256(grantedLocks[address(arg2)].field_0)++
                            mem[0] = sha3(address(arg2), 6)
                            uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s + arg4
                            uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _1410
                            mem[mem[64]] = arg2
                            mem[mem[64] + 32] = s + arg4
                            mem[mem[64] + 64] = _1410
                            emit Locked(address(arg2), s + arg4, _1410);
                            idx = idx + 1
                            s = s + arg4
                            continue 
                else:
                    require arg5.length
                    require arg5.length * arg4 / arg5.length / arg5.length == arg4 / arg5.length
                    require arg5.length * arg4 / arg5.length <= arg4
                    if arg4 / arg5.length > 0:
                        idx = 0
                        s = arg4 / mem[96]
                        while idx < arg5.length:
                            if idx != arg5.length - 1:
                                require idx < mem[96]
                                _1366 = mem[(32 * idx) + 128]
                                _1374 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1374] = 6
                                mem[_1374 + 32] = 'lockup'
                                if msg.sender == owner:
                                    require s > 0
                                    require _1366 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _1392 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1392] = s
                                    mem[_1392 + 32] = _1366
                                else:
                                    u = _1374 + 32
                                    v = mem[64]
                                    t = mem[_1374]
                                    while t >= 32:
                                        mem[v] = mem[u]
                                        u = u + 32
                                        v = v + 32
                                        t = t - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_1374])] = mem[_1374 + floor32(mem[_1374]) + -(mem[_1374] % 32) + 64 len mem[_1374] % 32] or Mask(8 * -(mem[_1374] % 32) + 32, -(8 * -(mem[_1374] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1374])])
                                    require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                    require s > 0
                                    require _1366 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _2749 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2749] = s
                                    mem[_2749 + 32] = _1366
                                uint256(grantedLocks[address(arg2)].field_0)++
                                mem[0] = sha3(address(arg2), 6)
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _1366
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = s
                                mem[mem[64] + 64] = _1366
                                emit Locked(address(arg2), s, _1366);
                                idx = idx + 1
                                s = s
                                continue 
                            if arg4 - (arg5.length * arg4 / arg5.length) <= 0:
                                require idx < mem[96]
                                _1375 = mem[(32 * idx) + 128]
                                _1378 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1378] = 6
                                mem[_1378 + 32] = 'lockup'
                                if msg.sender == owner:
                                    require s > 0
                                    require _1375 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _1418 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1418] = s
                                    mem[_1418 + 32] = _1375
                                else:
                                    u = _1378 + 32
                                    v = mem[64]
                                    t = mem[_1378]
                                    while t >= 32:
                                        mem[v] = mem[u]
                                        u = u + 32
                                        v = v + 32
                                        t = t - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_1378])] = mem[_1378 + floor32(mem[_1378]) + -(mem[_1378] % 32) + 64 len mem[_1378] % 32] or Mask(8 * -(mem[_1378] % 32) + 32, -(8 * -(mem[_1378] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1378])])
                                    require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                    require s > 0
                                    require _1375 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _2756 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2756] = s
                                    mem[_2756 + 32] = _1375
                                uint256(grantedLocks[address(arg2)].field_0)++
                                mem[0] = sha3(address(arg2), 6)
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _1375
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = s
                                mem[mem[64] + 64] = _1375
                                emit Locked(address(arg2), s, _1375);
                                idx = idx + 1
                                s = s
                                continue 
                            require s + arg4 - (arg5.length * arg4 / arg5.length) >= s
                            require idx < mem[96]
                            _1400 = mem[(32 * idx) + 128]
                            _1424 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1424] = 6
                            mem[_1424 + 32] = 'lockup'
                            if msg.sender == owner:
                                require s + arg4 - (arg5.length * arg4 / arg5.length) > 0
                                require _1400 > block.timestamp
                                mem[0] = arg2
                                mem[32] = 6
                                _1473 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1473] = s + arg4 - (arg5.length * arg4 / arg5.length)
                                mem[_1473 + 32] = _1400
                            else:
                                u = _1424 + 32
                                v = mem[64]
                                t = mem[_1424]
                                while t >= 32:
                                    mem[v] = mem[u]
                                    u = u + 32
                                    v = v + 32
                                    t = t - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_1424])] = mem[_1424 + floor32(mem[_1424]) + -(mem[_1424] % 32) + 64 len mem[_1424] % 32] or Mask(8 * -(mem[_1424] % 32) + 32, -(8 * -(mem[_1424] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1424])])
                                require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                require s + arg4 - (arg5.length * arg4 / arg5.length) > 0
                                require _1400 > block.timestamp
                                mem[0] = arg2
                                mem[32] = 6
                                _2763 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2763] = s + arg4 - (arg5.length * arg4 / arg5.length)
                                mem[_2763 + 32] = _1400
                            uint256(grantedLocks[address(arg2)].field_0)++
                            mem[0] = sha3(address(arg2), 6)
                            uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s + arg4 - (arg5.length * arg4 / arg5.length)
                            uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _1400
                            mem[mem[64]] = arg2
                            mem[mem[64] + 32] = s + arg4 - (arg5.length * arg4 / arg5.length)
                            mem[mem[64] + 64] = _1400
                            emit Locked(address(arg2), s + arg4 - (arg5.length * arg4 / arg5.length), _1400);
                            idx = idx + 1
                            s = s + arg4 - (arg5.length * arg4 / arg5.length)
                            continue 
        else:
            mem[(32 * arg5.length) + 192 len 0] = None
            mem[(32 * arg5.length) + 198] = 4
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * arg5.length) + 192 len 6], 4)
            require stor4[mem[(32 * arg5.length) + 192 len 6]][address(msg.sender)]
            require arg3 >= arg4
            if arg5.length > 0:
                require arg5.length
                if not arg5.length:
                    require 0 <= arg4
                    if arg4 / arg5.length > 0:
                        idx = 0
                        s = arg4 / mem[96]
                        while idx < arg5.length:
                            if idx != arg5.length - 1:
                                require idx < mem[96]
                                _2703 = mem[(32 * idx) + 128]
                                _2717 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2717] = 6
                                mem[_2717 + 32] = 'lockup'
                                if msg.sender == owner:
                                    require s > 0
                                    require _2703 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _2801 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2801] = s
                                    mem[_2801 + 32] = _2703
                                else:
                                    u = _2717 + 32
                                    v = mem[64]
                                    t = mem[_2717]
                                    while t >= 32:
                                        mem[v] = mem[u]
                                        u = u + 32
                                        v = v + 32
                                        t = t - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_2717])] = mem[_2717 + floor32(mem[_2717]) + -(mem[_2717] % 32) + 64 len mem[_2717] % 32] or Mask(8 * -(mem[_2717] % 32) + 32, -(8 * -(mem[_2717] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2717])])
                                    require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                    require s > 0
                                    require _2703 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _3777 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3777] = s
                                    mem[_3777 + 32] = _2703
                                uint256(grantedLocks[address(arg2)].field_0)++
                                mem[0] = sha3(address(arg2), 6)
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _2703
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = s
                                mem[mem[64] + 64] = _2703
                                emit Locked(address(arg2), s, _2703);
                                idx = idx + 1
                                s = s
                                continue 
                            if arg4 <= 0:
                                require idx < mem[96]
                                _2718 = mem[(32 * idx) + 128]
                                _2724 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2724] = 6
                                mem[_2724 + 32] = 'lockup'
                                if msg.sender == owner:
                                    require s > 0
                                    require _2718 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _2851 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2851] = s
                                    mem[_2851 + 32] = _2718
                                else:
                                    u = _2724 + 32
                                    v = mem[64]
                                    t = mem[_2724]
                                    while t >= 32:
                                        mem[v] = mem[u]
                                        u = u + 32
                                        v = v + 32
                                        t = t - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_2724])] = mem[_2724 + floor32(mem[_2724]) + -(mem[_2724] % 32) + 64 len mem[_2724] % 32] or Mask(8 * -(mem[_2724] % 32) + 32, -(8 * -(mem[_2724] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2724])])
                                    require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                    require s > 0
                                    require _2718 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _3784 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3784] = s
                                    mem[_3784 + 32] = _2718
                                uint256(grantedLocks[address(arg2)].field_0)++
                                mem[0] = sha3(address(arg2), 6)
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _2718
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = s
                                mem[mem[64] + 64] = _2718
                                emit Locked(address(arg2), s, _2718);
                                idx = idx + 1
                                s = s
                                continue 
                            require s + arg4 >= s
                            require idx < mem[96]
                            _2809 = mem[(32 * idx) + 128]
                            _2857 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2857] = 6
                            mem[_2857 + 32] = 'lockup'
                            if msg.sender == owner:
                                require s + arg4 > 0
                                require _2809 > block.timestamp
                                mem[0] = arg2
                                mem[32] = 6
                                _2961 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2961] = s + arg4
                                mem[_2961 + 32] = _2809
                            else:
                                u = _2857 + 32
                                v = mem[64]
                                t = mem[_2857]
                                while t >= 32:
                                    mem[v] = mem[u]
                                    u = u + 32
                                    v = v + 32
                                    t = t - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2857])] = mem[_2857 + floor32(mem[_2857]) + -(mem[_2857] % 32) + 64 len mem[_2857] % 32] or Mask(8 * -(mem[_2857] % 32) + 32, -(8 * -(mem[_2857] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2857])])
                                require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                require s + arg4 > 0
                                require _2809 > block.timestamp
                                mem[0] = arg2
                                mem[32] = 6
                                _3791 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3791] = s + arg4
                                mem[_3791 + 32] = _2809
                            uint256(grantedLocks[address(arg2)].field_0)++
                            mem[0] = sha3(address(arg2), 6)
                            uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s + arg4
                            uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _2809
                            mem[mem[64]] = arg2
                            mem[mem[64] + 32] = s + arg4
                            mem[mem[64] + 64] = _2809
                            emit Locked(address(arg2), s + arg4, _2809);
                            idx = idx + 1
                            s = s + arg4
                            continue 
                else:
                    require arg5.length
                    require arg5.length * arg4 / arg5.length / arg5.length == arg4 / arg5.length
                    require arg5.length * arg4 / arg5.length <= arg4
                    if arg4 / arg5.length > 0:
                        idx = 0
                        s = arg4 / mem[96]
                        while idx < arg5.length:
                            if idx != arg5.length - 1:
                                require idx < mem[96]
                                _2699 = mem[(32 * idx) + 128]
                                _2715 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2715] = 6
                                mem[_2715 + 32] = 'lockup'
                                if msg.sender == owner:
                                    require s > 0
                                    require _2699 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _2791 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2791] = s
                                    mem[_2791 + 32] = _2699
                                else:
                                    u = _2715 + 32
                                    v = mem[64]
                                    t = mem[_2715]
                                    while t >= 32:
                                        mem[v] = mem[u]
                                        u = u + 32
                                        v = v + 32
                                        t = t - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_2715])] = mem[_2715 + floor32(mem[_2715]) + -(mem[_2715] % 32) + 64 len mem[_2715] % 32] or Mask(8 * -(mem[_2715] % 32) + 32, -(8 * -(mem[_2715] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2715])])
                                    require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                    require s > 0
                                    require _2699 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _3756 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3756] = s
                                    mem[_3756 + 32] = _2699
                                uint256(grantedLocks[address(arg2)].field_0)++
                                mem[0] = sha3(address(arg2), 6)
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _2699
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = s
                                mem[mem[64] + 64] = _2699
                                emit Locked(address(arg2), s, _2699);
                                idx = idx + 1
                                s = s
                                continue 
                            if arg4 - (arg5.length * arg4 / arg5.length) <= 0:
                                require idx < mem[96]
                                _2716 = mem[(32 * idx) + 128]
                                _2723 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2723] = 6
                                mem[_2723 + 32] = 'lockup'
                                if msg.sender == owner:
                                    require s > 0
                                    require _2716 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _2837 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2837] = s
                                    mem[_2837 + 32] = _2716
                                else:
                                    u = _2723 + 32
                                    v = mem[64]
                                    t = mem[_2723]
                                    while t >= 32:
                                        mem[v] = mem[u]
                                        u = u + 32
                                        v = v + 32
                                        t = t - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_2723])] = mem[_2723 + floor32(mem[_2723]) + -(mem[_2723] % 32) + 64 len mem[_2723] % 32] or Mask(8 * -(mem[_2723] % 32) + 32, -(8 * -(mem[_2723] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2723])])
                                    require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                    require s > 0
                                    require _2716 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _3763 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3763] = s
                                    mem[_3763 + 32] = _2716
                                uint256(grantedLocks[address(arg2)].field_0)++
                                mem[0] = sha3(address(arg2), 6)
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _2716
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = s
                                mem[mem[64] + 64] = _2716
                                emit Locked(address(arg2), s, _2716);
                                idx = idx + 1
                                s = s
                                continue 
                            require s + arg4 - (arg5.length * arg4 / arg5.length) >= s
                            require idx < mem[96]
                            _2799 = mem[(32 * idx) + 128]
                            _2843 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2843] = 6
                            mem[_2843 + 32] = 'lockup'
                            if msg.sender == owner:
                                require s + arg4 - (arg5.length * arg4 / arg5.length) > 0
                                require _2799 > block.timestamp
                                mem[0] = arg2
                                mem[32] = 6
                                _2952 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2952] = s + arg4 - (arg5.length * arg4 / arg5.length)
                                mem[_2952 + 32] = _2799
                            else:
                                u = _2843 + 32
                                v = mem[64]
                                t = mem[_2843]
                                while t >= 32:
                                    mem[v] = mem[u]
                                    u = u + 32
                                    v = v + 32
                                    t = t - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2843])] = mem[_2843 + floor32(mem[_2843]) + -(mem[_2843] % 32) + 64 len mem[_2843] % 32] or Mask(8 * -(mem[_2843] % 32) + 32, -(8 * -(mem[_2843] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2843])])
                                require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                require s + arg4 - (arg5.length * arg4 / arg5.length) > 0
                                require _2799 > block.timestamp
                                mem[0] = arg2
                                mem[32] = 6
                                _3770 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3770] = s + arg4 - (arg5.length * arg4 / arg5.length)
                                mem[_3770 + 32] = _2799
                            uint256(grantedLocks[address(arg2)].field_0)++
                            mem[0] = sha3(address(arg2), 6)
                            uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s + arg4 - (arg5.length * arg4 / arg5.length)
                            uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _2799
                            mem[mem[64]] = arg2
                            mem[mem[64] + 32] = s + arg4 - (arg5.length * arg4 / arg5.length)
                            mem[mem[64] + 64] = _2799
                            emit Locked(address(arg2), s + arg4 - (arg5.length * arg4 / arg5.length), _2799);
                            idx = idx + 1
                            s = s + arg4 - (arg5.length * arg4 / arg5.length)
                            continue 
    else:
        idx = 0
        s = 0
        while idx < uint256(grantedLocks[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 6)
            if block.timestamp >= uint256(grantedLocks[address(arg1)][idx].field_256):
                idx = idx + 1
                s = s
                continue 
            require idx < uint256(grantedLocks[address(arg1)].field_0)
            mem[0] = sha3(address(arg1), 6)
            require s + uint256(grantedLocks[address(arg1)][idx].field_0) >= s
            idx = idx + 1
            s = s + uint256(grantedLocks[address(arg1)][idx].field_0)
            continue 
        mem[0] = arg1
        mem[32] = 0
        require balanceOf[address(arg1)] > s
        require s <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] - s >= arg3
        mem[64] = (32 * arg5.length) + 192
        mem[(32 * arg5.length) + 128] = 6
        mem[(32 * arg5.length) + 160] = 'lockup'
        if msg.sender == owner:
            require arg3 >= arg4
            if arg5.length > 0:
                require arg5.length
                if not arg5.length:
                    require 0 <= arg4
                    if arg4 / arg5.length > 0:
                        idx = 0
                        s = arg4 / mem[96]
                        while idx < arg5.length:
                            if idx != arg5.length - 1:
                                require idx < mem[96]
                                _2713 = mem[(32 * idx) + 128]
                                _2721 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2721] = 6
                                mem[_2721 + 32] = 'lockup'
                                if msg.sender == owner:
                                    require s > 0
                                    require _2713 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _2821 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2821] = s
                                    mem[_2821 + 32] = _2713
                                else:
                                    u = _2721 + 32
                                    v = mem[64]
                                    t = mem[_2721]
                                    while t >= 32:
                                        mem[v] = mem[u]
                                        u = u + 32
                                        v = v + 32
                                        t = t - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_2721])] = mem[_2721 + floor32(mem[_2721]) + -(mem[_2721] % 32) + 64 len mem[_2721] % 32] or Mask(8 * -(mem[_2721] % 32) + 32, -(8 * -(mem[_2721] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2721])])
                                    require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                    require s > 0
                                    require _2713 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _3819 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3819] = s
                                    mem[_3819 + 32] = _2713
                                uint256(grantedLocks[address(arg2)].field_0)++
                                mem[0] = sha3(address(arg2), 6)
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _2713
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = s
                                mem[mem[64] + 64] = _2713
                                emit Locked(address(arg2), s, _2713);
                                idx = idx + 1
                                s = s
                                continue 
                            if arg4 <= 0:
                                require idx < mem[96]
                                _2722 = mem[(32 * idx) + 128]
                                _2726 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2726] = 6
                                mem[_2726 + 32] = 'lockup'
                                if msg.sender == owner:
                                    require s > 0
                                    require _2722 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _2879 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2879] = s
                                    mem[_2879 + 32] = _2722
                                else:
                                    u = _2726 + 32
                                    v = mem[64]
                                    t = mem[_2726]
                                    while t >= 32:
                                        mem[v] = mem[u]
                                        u = u + 32
                                        v = v + 32
                                        t = t - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_2726])] = mem[_2726 + floor32(mem[_2726]) + -(mem[_2726] % 32) + 64 len mem[_2726] % 32] or Mask(8 * -(mem[_2726] % 32) + 32, -(8 * -(mem[_2726] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2726])])
                                    require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                    require s > 0
                                    require _2722 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _3826 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3826] = s
                                    mem[_3826 + 32] = _2722
                                uint256(grantedLocks[address(arg2)].field_0)++
                                mem[0] = sha3(address(arg2), 6)
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _2722
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = s
                                mem[mem[64] + 64] = _2722
                                emit Locked(address(arg2), s, _2722);
                                idx = idx + 1
                                s = s
                                continue 
                            require s + arg4 >= s
                            require idx < mem[96]
                            _2829 = mem[(32 * idx) + 128]
                            _2885 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2885] = 6
                            mem[_2885 + 32] = 'lockup'
                            if msg.sender == owner:
                                require s + arg4 > 0
                                require _2829 > block.timestamp
                                mem[0] = arg2
                                mem[32] = 6
                                _2981 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2981] = s + arg4
                                mem[_2981 + 32] = _2829
                            else:
                                u = _2885 + 32
                                v = mem[64]
                                t = mem[_2885]
                                while t >= 32:
                                    mem[v] = mem[u]
                                    u = u + 32
                                    v = v + 32
                                    t = t - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2885])] = mem[_2885 + floor32(mem[_2885]) + -(mem[_2885] % 32) + 64 len mem[_2885] % 32] or Mask(8 * -(mem[_2885] % 32) + 32, -(8 * -(mem[_2885] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2885])])
                                require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                require s + arg4 > 0
                                require _2829 > block.timestamp
                                mem[0] = arg2
                                mem[32] = 6
                                _3833 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3833] = s + arg4
                                mem[_3833 + 32] = _2829
                            uint256(grantedLocks[address(arg2)].field_0)++
                            mem[0] = sha3(address(arg2), 6)
                            uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s + arg4
                            uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _2829
                            mem[mem[64]] = arg2
                            mem[mem[64] + 32] = s + arg4
                            mem[mem[64] + 64] = _2829
                            emit Locked(address(arg2), s + arg4, _2829);
                            idx = idx + 1
                            s = s + arg4
                            continue 
                else:
                    require arg5.length
                    require arg5.length * arg4 / arg5.length / arg5.length == arg4 / arg5.length
                    require arg5.length * arg4 / arg5.length <= arg4
                    if arg4 / arg5.length > 0:
                        idx = 0
                        s = arg4 / mem[96]
                        while idx < arg5.length:
                            if idx != arg5.length - 1:
                                require idx < mem[96]
                                _2709 = mem[(32 * idx) + 128]
                                _2719 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2719] = 6
                                mem[_2719 + 32] = 'lockup'
                                if msg.sender == owner:
                                    require s > 0
                                    require _2709 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _2811 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2811] = s
                                    mem[_2811 + 32] = _2709
                                else:
                                    u = _2719 + 32
                                    v = mem[64]
                                    t = mem[_2719]
                                    while t >= 32:
                                        mem[v] = mem[u]
                                        u = u + 32
                                        v = v + 32
                                        t = t - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_2719])] = mem[_2719 + floor32(mem[_2719]) + -(mem[_2719] % 32) + 64 len mem[_2719] % 32] or Mask(8 * -(mem[_2719] % 32) + 32, -(8 * -(mem[_2719] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2719])])
                                    require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                    require s > 0
                                    require _2709 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _3798 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3798] = s
                                    mem[_3798 + 32] = _2709
                                uint256(grantedLocks[address(arg2)].field_0)++
                                mem[0] = sha3(address(arg2), 6)
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _2709
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = s
                                mem[mem[64] + 64] = _2709
                                emit Locked(address(arg2), s, _2709);
                                idx = idx + 1
                                s = s
                                continue 
                            if arg4 - (arg5.length * arg4 / arg5.length) <= 0:
                                require idx < mem[96]
                                _2720 = mem[(32 * idx) + 128]
                                _2725 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2725] = 6
                                mem[_2725 + 32] = 'lockup'
                                if msg.sender == owner:
                                    require s > 0
                                    require _2720 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _2865 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2865] = s
                                    mem[_2865 + 32] = _2720
                                else:
                                    u = _2725 + 32
                                    v = mem[64]
                                    t = mem[_2725]
                                    while t >= 32:
                                        mem[v] = mem[u]
                                        u = u + 32
                                        v = v + 32
                                        t = t - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_2725])] = mem[_2725 + floor32(mem[_2725]) + -(mem[_2725] % 32) + 64 len mem[_2725] % 32] or Mask(8 * -(mem[_2725] % 32) + 32, -(8 * -(mem[_2725] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2725])])
                                    require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                    require s > 0
                                    require _2720 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _3805 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3805] = s
                                    mem[_3805 + 32] = _2720
                                uint256(grantedLocks[address(arg2)].field_0)++
                                mem[0] = sha3(address(arg2), 6)
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _2720
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = s
                                mem[mem[64] + 64] = _2720
                                emit Locked(address(arg2), s, _2720);
                                idx = idx + 1
                                s = s
                                continue 
                            require s + arg4 - (arg5.length * arg4 / arg5.length) >= s
                            require idx < mem[96]
                            _2819 = mem[(32 * idx) + 128]
                            _2871 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2871] = 6
                            mem[_2871 + 32] = 'lockup'
                            if msg.sender == owner:
                                require s + arg4 - (arg5.length * arg4 / arg5.length) > 0
                                require _2819 > block.timestamp
                                mem[0] = arg2
                                mem[32] = 6
                                _2972 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2972] = s + arg4 - (arg5.length * arg4 / arg5.length)
                                mem[_2972 + 32] = _2819
                            else:
                                u = _2871 + 32
                                v = mem[64]
                                t = mem[_2871]
                                while t >= 32:
                                    mem[v] = mem[u]
                                    u = u + 32
                                    v = v + 32
                                    t = t - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2871])] = mem[_2871 + floor32(mem[_2871]) + -(mem[_2871] % 32) + 64 len mem[_2871] % 32] or Mask(8 * -(mem[_2871] % 32) + 32, -(8 * -(mem[_2871] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2871])])
                                require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                require s + arg4 - (arg5.length * arg4 / arg5.length) > 0
                                require _2819 > block.timestamp
                                mem[0] = arg2
                                mem[32] = 6
                                _3812 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3812] = s + arg4 - (arg5.length * arg4 / arg5.length)
                                mem[_3812 + 32] = _2819
                            uint256(grantedLocks[address(arg2)].field_0)++
                            mem[0] = sha3(address(arg2), 6)
                            uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s + arg4 - (arg5.length * arg4 / arg5.length)
                            uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _2819
                            mem[mem[64]] = arg2
                            mem[mem[64] + 32] = s + arg4 - (arg5.length * arg4 / arg5.length)
                            mem[mem[64] + 64] = _2819
                            emit Locked(address(arg2), s + arg4 - (arg5.length * arg4 / arg5.length), _2819);
                            idx = idx + 1
                            s = s + arg4 - (arg5.length * arg4 / arg5.length)
                            continue 
        else:
            mem[(32 * arg5.length) + 192 len 0] = None
            mem[(32 * arg5.length) + 198] = 4
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * arg5.length) + 192 len 6], 4)
            require stor4[mem[(32 * arg5.length) + 192 len 6]][address(msg.sender)]
            require arg3 >= arg4
            if arg5.length > 0:
                require arg5.length
                if not arg5.length:
                    require 0 <= arg4
                    if arg4 / arg5.length > 0:
                        idx = 0
                        s = arg4 / mem[96]
                        while idx < arg5.length:
                            if idx != arg5.length - 1:
                                require idx < mem[96]
                                _3737 = mem[(32 * idx) + 128]
                                _3741 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3741] = 6
                                mem[_3741 + 32] = 'lockup'
                                if msg.sender == owner:
                                    require s > 0
                                    require _3737 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _3850 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3850] = s
                                    mem[_3850 + 32] = _3737
                                else:
                                    u = _3741 + 32
                                    v = mem[64]
                                    t = mem[_3741]
                                    while t >= 32:
                                        mem[v] = mem[u]
                                        u = u + 32
                                        v = v + 32
                                        t = t - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_3741])] = mem[_3741 + floor32(mem[_3741]) + -(mem[_3741] % 32) + 64 len mem[_3741] % 32] or Mask(8 * -(mem[_3741] % 32) + 32, -(8 * -(mem[_3741] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3741])])
                                    require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                    require s > 0
                                    require _3737 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _4208 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4208] = s
                                    mem[_4208 + 32] = _3737
                                uint256(grantedLocks[address(arg2)].field_0)++
                                mem[0] = sha3(address(arg2), 6)
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _3737
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = s
                                mem[mem[64] + 64] = _3737
                                emit Locked(address(arg2), s, _3737);
                                idx = idx + 1
                                s = s
                                continue 
                            if arg4 <= 0:
                                require idx < mem[96]
                                _3742 = mem[(32 * idx) + 128]
                                _3744 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3744] = 6
                                mem[_3744 + 32] = 'lockup'
                                if msg.sender == owner:
                                    require s > 0
                                    require _3742 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _3880 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3880] = s
                                    mem[_3880 + 32] = _3742
                                else:
                                    u = _3744 + 32
                                    v = mem[64]
                                    t = mem[_3744]
                                    while t >= 32:
                                        mem[v] = mem[u]
                                        u = u + 32
                                        v = v + 32
                                        t = t - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_3744])] = mem[_3744 + floor32(mem[_3744]) + -(mem[_3744] % 32) + 64 len mem[_3744] % 32] or Mask(8 * -(mem[_3744] % 32) + 32, -(8 * -(mem[_3744] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3744])])
                                    require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                    require s > 0
                                    require _3742 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _4215 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4215] = s
                                    mem[_4215 + 32] = _3742
                                uint256(grantedLocks[address(arg2)].field_0)++
                                mem[0] = sha3(address(arg2), 6)
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _3742
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = s
                                mem[mem[64] + 64] = _3742
                                emit Locked(address(arg2), s, _3742);
                                idx = idx + 1
                                s = s
                                continue 
                            require s + arg4 >= s
                            require idx < mem[96]
                            _3858 = mem[(32 * idx) + 128]
                            _3886 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3886] = 6
                            mem[_3886 + 32] = 'lockup'
                            if msg.sender == owner:
                                require s + arg4 > 0
                                require _3858 > block.timestamp
                                mem[0] = arg2
                                mem[32] = 6
                                _3940 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3940] = s + arg4
                                mem[_3940 + 32] = _3858
                            else:
                                u = _3886 + 32
                                v = mem[64]
                                t = mem[_3886]
                                while t >= 32:
                                    mem[v] = mem[u]
                                    u = u + 32
                                    v = v + 32
                                    t = t - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_3886])] = mem[_3886 + floor32(mem[_3886]) + -(mem[_3886] % 32) + 64 len mem[_3886] % 32] or Mask(8 * -(mem[_3886] % 32) + 32, -(8 * -(mem[_3886] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3886])])
                                require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                require s + arg4 > 0
                                require _3858 > block.timestamp
                                mem[0] = arg2
                                mem[32] = 6
                                _4222 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4222] = s + arg4
                                mem[_4222 + 32] = _3858
                            uint256(grantedLocks[address(arg2)].field_0)++
                            mem[0] = sha3(address(arg2), 6)
                            uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s + arg4
                            uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _3858
                            mem[mem[64]] = arg2
                            mem[mem[64] + 32] = s + arg4
                            mem[mem[64] + 64] = _3858
                            emit Locked(address(arg2), s + arg4, _3858);
                            idx = idx + 1
                            s = s + arg4
                            continue 
                else:
                    require arg5.length
                    require arg5.length * arg4 / arg5.length / arg5.length == arg4 / arg5.length
                    require arg5.length * arg4 / arg5.length <= arg4
                    if arg4 / arg5.length > 0:
                        idx = 0
                        s = arg4 / mem[96]
                        while idx < arg5.length:
                            if idx != arg5.length - 1:
                                require idx < mem[96]
                                _3733 = mem[(32 * idx) + 128]
                                _3739 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3739] = 6
                                mem[_3739 + 32] = 'lockup'
                                if msg.sender == owner:
                                    require s > 0
                                    require _3733 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _3840 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3840] = s
                                    mem[_3840 + 32] = _3733
                                else:
                                    u = _3739 + 32
                                    v = mem[64]
                                    t = mem[_3739]
                                    while t >= 32:
                                        mem[v] = mem[u]
                                        u = u + 32
                                        v = v + 32
                                        t = t - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_3739])] = mem[_3739 + floor32(mem[_3739]) + -(mem[_3739] % 32) + 64 len mem[_3739] % 32] or Mask(8 * -(mem[_3739] % 32) + 32, -(8 * -(mem[_3739] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3739])])
                                    require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                    require s > 0
                                    require _3733 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _4187 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4187] = s
                                    mem[_4187 + 32] = _3733
                                uint256(grantedLocks[address(arg2)].field_0)++
                                mem[0] = sha3(address(arg2), 6)
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _3733
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = s
                                mem[mem[64] + 64] = _3733
                                emit Locked(address(arg2), s, _3733);
                                idx = idx + 1
                                s = s
                                continue 
                            if arg4 - (arg5.length * arg4 / arg5.length) <= 0:
                                require idx < mem[96]
                                _3740 = mem[(32 * idx) + 128]
                                _3743 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3743] = 6
                                mem[_3743 + 32] = 'lockup'
                                if msg.sender == owner:
                                    require s > 0
                                    require _3740 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _3866 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3866] = s
                                    mem[_3866 + 32] = _3740
                                else:
                                    u = _3743 + 32
                                    v = mem[64]
                                    t = mem[_3743]
                                    while t >= 32:
                                        mem[v] = mem[u]
                                        u = u + 32
                                        v = v + 32
                                        t = t - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_3743])] = mem[_3743 + floor32(mem[_3743]) + -(mem[_3743] % 32) + 64 len mem[_3743] % 32] or Mask(8 * -(mem[_3743] % 32) + 32, -(8 * -(mem[_3743] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3743])])
                                    require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                    require s > 0
                                    require _3740 > block.timestamp
                                    mem[0] = arg2
                                    mem[32] = 6
                                    _4194 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4194] = s
                                    mem[_4194 + 32] = _3740
                                uint256(grantedLocks[address(arg2)].field_0)++
                                mem[0] = sha3(address(arg2), 6)
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s
                                uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _3740
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = s
                                mem[mem[64] + 64] = _3740
                                emit Locked(address(arg2), s, _3740);
                                idx = idx + 1
                                s = s
                                continue 
                            require s + arg4 - (arg5.length * arg4 / arg5.length) >= s
                            require idx < mem[96]
                            _3848 = mem[(32 * idx) + 128]
                            _3872 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3872] = 6
                            mem[_3872 + 32] = 'lockup'
                            if msg.sender == owner:
                                require s + arg4 - (arg5.length * arg4 / arg5.length) > 0
                                require _3848 > block.timestamp
                                mem[0] = arg2
                                mem[32] = 6
                                _3931 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3931] = s + arg4 - (arg5.length * arg4 / arg5.length)
                                mem[_3931 + 32] = _3848
                            else:
                                u = _3872 + 32
                                v = mem[64]
                                t = mem[_3872]
                                while t >= 32:
                                    mem[v] = mem[u]
                                    u = u + 32
                                    v = v + 32
                                    t = t - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_3872])] = mem[_3872 + floor32(mem[_3872]) + -(mem[_3872] % 32) + 64 len mem[_3872] % 32] or Mask(8 * -(mem[_3872] % 32) + 32, -(8 * -(mem[_3872] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3872])])
                                require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                require s + arg4 - (arg5.length * arg4 / arg5.length) > 0
                                require _3848 > block.timestamp
                                mem[0] = arg2
                                mem[32] = 6
                                _4201 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4201] = s + arg4 - (arg5.length * arg4 / arg5.length)
                                mem[_4201 + 32] = _3848
                            uint256(grantedLocks[address(arg2)].field_0)++
                            mem[0] = sha3(address(arg2), 6)
                            uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_0) = s + arg4 - (arg5.length * arg4 / arg5.length)
                            uint256(grantedLocks[address(arg2)][uint256(grantedLocks[address(arg2)].field_0)].field_256) = _3848
                            mem[mem[64]] = arg2
                            mem[mem[64] + 32] = s + arg4 - (arg5.length * arg4 / arg5.length)
                            mem[mem[64] + 64] = _3848
                            emit Locked(address(arg2), s + arg4 - (arg5.length * arg4 / arg5.length), _3848);
                            idx = idx + 1
                            s = s + arg4 - (arg5.length * arg4 / arg5.length)
                            continue 
    require not uint8(stor5.field_8)
    require arg1
    if uint256(grantedLocks[address(arg1)].field_0) <= 0:
        require balanceOf[address(arg1)] > 0
        require 0 <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] >= arg3
    else:
        idx = 0
        s = 0
        while idx < uint256(grantedLocks[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 6)
            if block.timestamp >= uint256(grantedLocks[address(arg1)][idx].field_256):
                idx = idx + 1
                s = s
                continue 
            require idx < uint256(grantedLocks[address(arg1)].field_0)
            mem[0] = sha3(address(arg1), 6)
            require s + uint256(grantedLocks[address(arg1)][idx].field_0) >= s
            idx = idx + 1
            s = s + uint256(grantedLocks[address(arg1)][idx].field_0)
            continue 
        require balanceOf[address(arg1)] > s
        require s <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] - s >= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferLockedMultiply(address[] arg1, uint256[] arg2, uint256[] arg3, uint256[] arg4) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 6
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = 'lockup'
    if msg.sender == owner:
        require arg1.length > 0
        require arg1.length == arg2.length
        require arg1.length == arg3.length
        require arg4.length > 0
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _2102 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _2105 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _2107 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require not uint8(stor5.field_8)
            require msg.sender
            if uint256(grantedLocks[address(msg.sender)].field_0) <= 0:
                mem[0] = msg.sender
                mem[32] = 0
                require balanceOf[address(msg.sender)] > 0
                require 0 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                _2126 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2126] = 6
                mem[_2126 + 32] = 'lockup'
                if msg.sender == owner:
                    require _2105 >= _2107
                    _2127 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                    if mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                        require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if not mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            require 0 <= _2107
                            if _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                                s = 0
                                t = _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                while s < _2127:
                                    if s != _2127 - 1:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _4203 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _4210 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4210] = 6
                                        mem[_4210 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _4203 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _4237 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4237] = t
                                            mem[_4237 + 32] = _4203
                                        else:
                                            u = _4210 + 32
                                            v = mem[64]
                                            idx = mem[_4210]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_4210])] = mem[_4210 + floor32(mem[_4210]) + -(mem[_4210] % 32) + 64 len mem[_4210] % 32] or Mask(8 * -(mem[_4210] % 32) + 32, -(8 * -(mem[_4210] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4210])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _4203 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _6377 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6377] = t
                                            mem[_6377 + 32] = _4203
                                        uint256(grantedLocks[address(_2102)].field_0)++
                                        mem[0] = sha3(address(_2102), 6)
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _4203
                                        mem[mem[64]] = address(_2102)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _4203
                                        emit Locked(address(_2102), t, _4203);
                                        s = s + 1
                                        t = t
                                        continue 
                                    if _2107 <= 0:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _4211 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _4213 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4213] = 6
                                        mem[_4213 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _4211 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _4268 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4268] = t
                                            mem[_4268 + 32] = _4211
                                        else:
                                            u = _4213 + 32
                                            v = mem[64]
                                            idx = mem[_4213]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_4213])] = mem[_4213 + floor32(mem[_4213]) + -(mem[_4213] % 32) + 64 len mem[_4213] % 32] or Mask(8 * -(mem[_4213] % 32) + 32, -(8 * -(mem[_4213] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4213])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _4211 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _6384 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6384] = t
                                            mem[_6384 + 32] = _4211
                                        uint256(grantedLocks[address(_2102)].field_0)++
                                        mem[0] = sha3(address(_2102), 6)
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _4211
                                        mem[mem[64]] = address(_2102)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _4211
                                        emit Locked(address(_2102), t, _4211);
                                        s = s + 1
                                        t = t
                                        continue 
                                    require t + _2107 >= t
                                    require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                    _4245 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                    _4274 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4274] = 6
                                    mem[_4274 + 32] = 'lockup'
                                    if msg.sender == owner:
                                        require t + _2107 > 0
                                        require _4245 > block.timestamp
                                        mem[0] = address(_2102)
                                        mem[32] = 6
                                        _4314 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4314] = t + _2107
                                        mem[_4314 + 32] = _4245
                                    else:
                                        u = _4274 + 32
                                        v = mem[64]
                                        idx = mem[_4274]
                                        while idx >= 32:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_4274])] = mem[_4274 + floor32(mem[_4274]) + -(mem[_4274] % 32) + 64 len mem[_4274] % 32] or Mask(8 * -(mem[_4274] % 32) + 32, -(8 * -(mem[_4274] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4274])])
                                        require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                        require t + _2107 > 0
                                        require _4245 > block.timestamp
                                        mem[0] = address(_2102)
                                        mem[32] = 6
                                        _6391 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6391] = t + _2107
                                        mem[_6391 + 32] = _4245
                                    uint256(grantedLocks[address(_2102)].field_0)++
                                    mem[0] = sha3(address(_2102), 6)
                                    uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t + _2107
                                    uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _4245
                                    mem[mem[64]] = address(_2102)
                                    mem[mem[64] + 32] = t + _2107
                                    mem[mem[64] + 64] = _4245
                                    emit Locked(address(_2102), t + _2107, _4245);
                                    s = s + 1
                                    t = t + _2107
                                    continue 
                        else:
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] * _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] == _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] * _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] <= _2107
                            if _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                                s = 0
                                t = _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                while s < _2127:
                                    if s != _2127 - 1:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _4199 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _4208 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4208] = 6
                                        mem[_4208 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _4199 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _4227 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4227] = t
                                            mem[_4227 + 32] = _4199
                                        else:
                                            u = _4208 + 32
                                            v = mem[64]
                                            idx = mem[_4208]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_4208])] = mem[_4208 + floor32(mem[_4208]) + -(mem[_4208] % 32) + 64 len mem[_4208] % 32] or Mask(8 * -(mem[_4208] % 32) + 32, -(8 * -(mem[_4208] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4208])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _4199 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _6356 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6356] = t
                                            mem[_6356 + 32] = _4199
                                        uint256(grantedLocks[address(_2102)].field_0)++
                                        mem[0] = sha3(address(_2102), 6)
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _4199
                                        mem[mem[64]] = address(_2102)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _4199
                                        emit Locked(address(_2102), t, _4199);
                                        s = s + 1
                                        t = t
                                        continue 
                                    if _2107 - (_2127 * _2107 / _2127) <= 0:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _4209 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _4212 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4212] = 6
                                        mem[_4212 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _4209 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _4254 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4254] = t
                                            mem[_4254 + 32] = _4209
                                        else:
                                            u = _4212 + 32
                                            v = mem[64]
                                            idx = mem[_4212]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_4212])] = mem[_4212 + floor32(mem[_4212]) + -(mem[_4212] % 32) + 64 len mem[_4212] % 32] or Mask(8 * -(mem[_4212] % 32) + 32, -(8 * -(mem[_4212] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4212])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _4209 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _6363 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6363] = t
                                            mem[_6363 + 32] = _4209
                                        uint256(grantedLocks[address(_2102)].field_0)++
                                        mem[0] = sha3(address(_2102), 6)
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _4209
                                        mem[mem[64]] = address(_2102)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _4209
                                        emit Locked(address(_2102), t, _4209);
                                        s = s + 1
                                        t = t
                                        continue 
                                    require t + _2107 - (_2127 * _2107 / _2127) >= t
                                    require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                    _4235 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                    _4260 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4260] = 6
                                    mem[_4260 + 32] = 'lockup'
                                    if msg.sender == owner:
                                        require t + _2107 - (_2127 * _2107 / _2127) > 0
                                        require _4235 > block.timestamp
                                        mem[0] = address(_2102)
                                        mem[32] = 6
                                        _4306 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4306] = t + _2107 - (_2127 * _2107 / _2127)
                                        mem[_4306 + 32] = _4235
                                    else:
                                        u = _4260 + 32
                                        v = mem[64]
                                        idx = mem[_4260]
                                        while idx >= 32:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_4260])] = mem[_4260 + floor32(mem[_4260]) + -(mem[_4260] % 32) + 64 len mem[_4260] % 32] or Mask(8 * -(mem[_4260] % 32) + 32, -(8 * -(mem[_4260] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4260])])
                                        require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                        require t + _2107 - (_2127 * _2107 / _2127) > 0
                                        require _4235 > block.timestamp
                                        mem[0] = address(_2102)
                                        mem[32] = 6
                                        _6370 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6370] = t + _2107 - (_2127 * _2107 / _2127)
                                        mem[_6370 + 32] = _4235
                                    uint256(grantedLocks[address(_2102)].field_0)++
                                    mem[0] = sha3(address(_2102), 6)
                                    uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t + _2107 - (_2127 * _2107 / _2127)
                                    uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _4235
                                    mem[mem[64]] = address(_2102)
                                    mem[mem[64] + 32] = t + _2107 - (_2127 * _2107 / _2127)
                                    mem[mem[64] + 64] = _4235
                                    emit Locked(address(_2102), t + _2107 - (_2127 * _2107 / _2127), _4235);
                                    s = s + 1
                                    t = t + _2107 - (_2127 * _2107 / _2127)
                                    continue 
                else:
                    t = _2126 + 32
                    u = mem[64]
                    s = mem[_2126]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2126])] = mem[_2126 + floor32(mem[_2126]) + -(mem[_2126] % 32) + 64 len mem[_2126] % 32] or Mask(8 * -(mem[_2126] % 32) + 32, -(8 * -(mem[_2126] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2126])])
                    mem[mem[64] + 6] = 4
                    _4179 = sha3(mem[mem[64] len 6], 4)
                    mem[0] = msg.sender
                    mem[32] = _4179
                    require stor[_4179][address(msg.sender)]
                    require _2105 >= _2107
                    _4224 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                    if mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                        require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if not mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            require 0 <= _2107
                            if _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                                s = 0
                                t = _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                while s < _4224:
                                    if s != _4224 - 1:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _6281 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _6307 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6307] = 6
                                        mem[_6307 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _6281 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _6408 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6408] = t
                                            mem[_6408 + 32] = _6281
                                        else:
                                            u = _6307 + 32
                                            v = mem[64]
                                            idx = mem[_6307]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_6307])] = mem[_6307 + floor32(mem[_6307]) + -(mem[_6307] % 32) + 64 len mem[_6307] % 32] or Mask(8 * -(mem[_6307] % 32) + 32, -(8 * -(mem[_6307] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6307])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _6281 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _8237 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8237] = t
                                            mem[_8237 + 32] = _6281
                                        uint256(grantedLocks[address(_2102)].field_0)++
                                        mem[0] = sha3(address(_2102), 6)
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _6281
                                        mem[mem[64]] = address(_2102)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _6281
                                        emit Locked(address(_2102), t, _6281);
                                        s = s + 1
                                        t = t
                                        continue 
                                    if _2107 <= 0:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _6308 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _6318 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6318] = 6
                                        mem[_6318 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _6308 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _6478 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6478] = t
                                            mem[_6478 + 32] = _6308
                                        else:
                                            u = _6318 + 32
                                            v = mem[64]
                                            idx = mem[_6318]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_6318])] = mem[_6318 + floor32(mem[_6318]) + -(mem[_6318] % 32) + 64 len mem[_6318] % 32] or Mask(8 * -(mem[_6318] % 32) + 32, -(8 * -(mem[_6318] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6318])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _6308 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _8244 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8244] = t
                                            mem[_8244 + 32] = _6308
                                        uint256(grantedLocks[address(_2102)].field_0)++
                                        mem[0] = sha3(address(_2102), 6)
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _6308
                                        mem[mem[64]] = address(_2102)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _6308
                                        emit Locked(address(_2102), t, _6308);
                                        s = s + 1
                                        t = t
                                        continue 
                                    require t + _2107 >= t
                                    require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                    _6416 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                    _6484 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6484] = 6
                                    mem[_6484 + 32] = 'lockup'
                                    if msg.sender == owner:
                                        require t + _2107 > 0
                                        require _6416 > block.timestamp
                                        mem[0] = address(_2102)
                                        mem[32] = 6
                                        _6629 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6629] = t + _2107
                                        mem[_6629 + 32] = _6416
                                    else:
                                        u = _6484 + 32
                                        v = mem[64]
                                        idx = mem[_6484]
                                        while idx >= 32:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_6484])] = mem[_6484 + floor32(mem[_6484]) + -(mem[_6484] % 32) + 64 len mem[_6484] % 32] or Mask(8 * -(mem[_6484] % 32) + 32, -(8 * -(mem[_6484] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6484])])
                                        require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                        require t + _2107 > 0
                                        require _6416 > block.timestamp
                                        mem[0] = address(_2102)
                                        mem[32] = 6
                                        _8251 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8251] = t + _2107
                                        mem[_8251 + 32] = _6416
                                    uint256(grantedLocks[address(_2102)].field_0)++
                                    mem[0] = sha3(address(_2102), 6)
                                    uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t + _2107
                                    uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _6416
                                    mem[mem[64]] = address(_2102)
                                    mem[mem[64] + 32] = t + _2107
                                    mem[mem[64] + 64] = _6416
                                    emit Locked(address(_2102), t + _2107, _6416);
                                    s = s + 1
                                    t = t + _2107
                                    continue 
                        else:
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] * _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] == _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] * _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] <= _2107
                            if _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                                s = 0
                                t = _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                while s < _4224:
                                    if s != _4224 - 1:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _6277 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _6305 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6305] = 6
                                        mem[_6305 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _6277 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _6398 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6398] = t
                                            mem[_6398 + 32] = _6277
                                        else:
                                            u = _6305 + 32
                                            v = mem[64]
                                            idx = mem[_6305]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_6305])] = mem[_6305 + floor32(mem[_6305]) + -(mem[_6305] % 32) + 64 len mem[_6305] % 32] or Mask(8 * -(mem[_6305] % 32) + 32, -(8 * -(mem[_6305] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6305])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _6277 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _8216 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8216] = t
                                            mem[_8216 + 32] = _6277
                                        uint256(grantedLocks[address(_2102)].field_0)++
                                        mem[0] = sha3(address(_2102), 6)
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _6277
                                        mem[mem[64]] = address(_2102)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _6277
                                        emit Locked(address(_2102), t, _6277);
                                        s = s + 1
                                        t = t
                                        continue 
                                    if _2107 - (_4224 * _2107 / _4224) <= 0:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _6306 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _6317 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6317] = 6
                                        mem[_6317 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _6306 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _6464 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6464] = t
                                            mem[_6464 + 32] = _6306
                                        else:
                                            u = _6317 + 32
                                            v = mem[64]
                                            idx = mem[_6317]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_6317])] = mem[_6317 + floor32(mem[_6317]) + -(mem[_6317] % 32) + 64 len mem[_6317] % 32] or Mask(8 * -(mem[_6317] % 32) + 32, -(8 * -(mem[_6317] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6317])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _6306 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _8223 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8223] = t
                                            mem[_8223 + 32] = _6306
                                        uint256(grantedLocks[address(_2102)].field_0)++
                                        mem[0] = sha3(address(_2102), 6)
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _6306
                                        mem[mem[64]] = address(_2102)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _6306
                                        emit Locked(address(_2102), t, _6306);
                                        s = s + 1
                                        t = t
                                        continue 
                                    require t + _2107 - (_4224 * _2107 / _4224) >= t
                                    require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                    _6406 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                    _6470 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6470] = 6
                                    mem[_6470 + 32] = 'lockup'
                                    if msg.sender == owner:
                                        require t + _2107 - (_4224 * _2107 / _4224) > 0
                                        require _6406 > block.timestamp
                                        mem[0] = address(_2102)
                                        mem[32] = 6
                                        _6621 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6621] = t + _2107 - (_4224 * _2107 / _4224)
                                        mem[_6621 + 32] = _6406
                                    else:
                                        u = _6470 + 32
                                        v = mem[64]
                                        idx = mem[_6470]
                                        while idx >= 32:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_6470])] = mem[_6470 + floor32(mem[_6470]) + -(mem[_6470] % 32) + 64 len mem[_6470] % 32] or Mask(8 * -(mem[_6470] % 32) + 32, -(8 * -(mem[_6470] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6470])])
                                        require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                        require t + _2107 - (_4224 * _2107 / _4224) > 0
                                        require _6406 > block.timestamp
                                        mem[0] = address(_2102)
                                        mem[32] = 6
                                        _8230 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8230] = t + _2107 - (_4224 * _2107 / _4224)
                                        mem[_8230 + 32] = _6406
                                    uint256(grantedLocks[address(_2102)].field_0)++
                                    mem[0] = sha3(address(_2102), 6)
                                    uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t + _2107 - (_4224 * _2107 / _4224)
                                    uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _6406
                                    mem[mem[64]] = address(_2102)
                                    mem[mem[64] + 32] = t + _2107 - (_4224 * _2107 / _4224)
                                    mem[mem[64] + 64] = _6406
                                    emit Locked(address(_2102), t + _2107 - (_4224 * _2107 / _4224), _6406);
                                    s = s + 1
                                    t = t + _2107 - (_4224 * _2107 / _4224)
                                    continue 
            else:
                s = 0
                t = 0
                while s < uint256(grantedLocks[address(msg.sender)].field_0):
                    mem[0] = sha3(address(msg.sender), 6)
                    if block.timestamp >= uint256(grantedLocks[address(msg.sender)][s].field_256):
                        s = s + 1
                        t = t
                        continue 
                    require s < uint256(grantedLocks[address(msg.sender)].field_0)
                    mem[0] = sha3(address(msg.sender), 6)
                    require t + uint256(grantedLocks[address(msg.sender)][s].field_0) >= t
                    s = s + 1
                    t = t + uint256(grantedLocks[address(msg.sender)][s].field_0)
                    continue 
                mem[0] = msg.sender
                mem[32] = 0
                require balanceOf[address(msg.sender)] > t
                require t <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - t >= mem[(32 * idx) + (32 * arg1.length) + 160]
                _4289 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4289] = 6
                mem[_4289 + 32] = 'lockup'
                if msg.sender == owner:
                    require _2105 >= _2107
                    _4321 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                    if mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                        require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if not mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            require 0 <= _2107
                            if _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                                s = 0
                                t = _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                while s < _4321:
                                    if s != _4321 - 1:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _6291 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _6311 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6311] = 6
                                        mem[_6311 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _6291 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _6428 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6428] = t
                                            mem[_6428 + 32] = _6291
                                        else:
                                            u = _6311 + 32
                                            v = mem[64]
                                            idx = mem[_6311]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_6311])] = mem[_6311 + floor32(mem[_6311]) + -(mem[_6311] % 32) + 64 len mem[_6311] % 32] or Mask(8 * -(mem[_6311] % 32) + 32, -(8 * -(mem[_6311] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6311])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _6291 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _8279 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8279] = t
                                            mem[_8279 + 32] = _6291
                                        uint256(grantedLocks[address(_2102)].field_0)++
                                        mem[0] = sha3(address(_2102), 6)
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _6291
                                        mem[mem[64]] = address(_2102)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _6291
                                        emit Locked(address(_2102), t, _6291);
                                        s = s + 1
                                        t = t
                                        continue 
                                    if _2107 <= 0:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _6312 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _6320 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6320] = 6
                                        mem[_6320 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _6312 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _6506 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6506] = t
                                            mem[_6506 + 32] = _6312
                                        else:
                                            u = _6320 + 32
                                            v = mem[64]
                                            idx = mem[_6320]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_6320])] = mem[_6320 + floor32(mem[_6320]) + -(mem[_6320] % 32) + 64 len mem[_6320] % 32] or Mask(8 * -(mem[_6320] % 32) + 32, -(8 * -(mem[_6320] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6320])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _6312 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _8286 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8286] = t
                                            mem[_8286 + 32] = _6312
                                        uint256(grantedLocks[address(_2102)].field_0)++
                                        mem[0] = sha3(address(_2102), 6)
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _6312
                                        mem[mem[64]] = address(_2102)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _6312
                                        emit Locked(address(_2102), t, _6312);
                                        s = s + 1
                                        t = t
                                        continue 
                                    require t + _2107 >= t
                                    require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                    _6436 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                    _6512 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6512] = 6
                                    mem[_6512 + 32] = 'lockup'
                                    if msg.sender == owner:
                                        require t + _2107 > 0
                                        require _6436 > block.timestamp
                                        mem[0] = address(_2102)
                                        mem[32] = 6
                                        _6646 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6646] = t + _2107
                                        mem[_6646 + 32] = _6436
                                    else:
                                        u = _6512 + 32
                                        v = mem[64]
                                        idx = mem[_6512]
                                        while idx >= 32:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_6512])] = mem[_6512 + floor32(mem[_6512]) + -(mem[_6512] % 32) + 64 len mem[_6512] % 32] or Mask(8 * -(mem[_6512] % 32) + 32, -(8 * -(mem[_6512] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6512])])
                                        require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                        require t + _2107 > 0
                                        require _6436 > block.timestamp
                                        mem[0] = address(_2102)
                                        mem[32] = 6
                                        _8293 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8293] = t + _2107
                                        mem[_8293 + 32] = _6436
                                    uint256(grantedLocks[address(_2102)].field_0)++
                                    mem[0] = sha3(address(_2102), 6)
                                    uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t + _2107
                                    uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _6436
                                    mem[mem[64]] = address(_2102)
                                    mem[mem[64] + 32] = t + _2107
                                    mem[mem[64] + 64] = _6436
                                    emit Locked(address(_2102), t + _2107, _6436);
                                    s = s + 1
                                    t = t + _2107
                                    continue 
                        else:
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] * _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] == _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] * _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] <= _2107
                            if _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                                s = 0
                                t = _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                while s < _4321:
                                    if s != _4321 - 1:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _6287 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _6309 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6309] = 6
                                        mem[_6309 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _6287 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _6418 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6418] = t
                                            mem[_6418 + 32] = _6287
                                        else:
                                            u = _6309 + 32
                                            v = mem[64]
                                            idx = mem[_6309]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_6309])] = mem[_6309 + floor32(mem[_6309]) + -(mem[_6309] % 32) + 64 len mem[_6309] % 32] or Mask(8 * -(mem[_6309] % 32) + 32, -(8 * -(mem[_6309] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6309])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _6287 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _8258 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8258] = t
                                            mem[_8258 + 32] = _6287
                                        uint256(grantedLocks[address(_2102)].field_0)++
                                        mem[0] = sha3(address(_2102), 6)
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _6287
                                        mem[mem[64]] = address(_2102)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _6287
                                        emit Locked(address(_2102), t, _6287);
                                        s = s + 1
                                        t = t
                                        continue 
                                    if _2107 - (_4321 * _2107 / _4321) <= 0:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _6310 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _6319 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6319] = 6
                                        mem[_6319 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _6310 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _6492 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6492] = t
                                            mem[_6492 + 32] = _6310
                                        else:
                                            u = _6319 + 32
                                            v = mem[64]
                                            idx = mem[_6319]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_6319])] = mem[_6319 + floor32(mem[_6319]) + -(mem[_6319] % 32) + 64 len mem[_6319] % 32] or Mask(8 * -(mem[_6319] % 32) + 32, -(8 * -(mem[_6319] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6319])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _6310 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _8265 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8265] = t
                                            mem[_8265 + 32] = _6310
                                        uint256(grantedLocks[address(_2102)].field_0)++
                                        mem[0] = sha3(address(_2102), 6)
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _6310
                                        mem[mem[64]] = address(_2102)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _6310
                                        emit Locked(address(_2102), t, _6310);
                                        s = s + 1
                                        t = t
                                        continue 
                                    require t + _2107 - (_4321 * _2107 / _4321) >= t
                                    require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                    _6426 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                    _6498 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6498] = 6
                                    mem[_6498 + 32] = 'lockup'
                                    if msg.sender == owner:
                                        require t + _2107 - (_4321 * _2107 / _4321) > 0
                                        require _6426 > block.timestamp
                                        mem[0] = address(_2102)
                                        mem[32] = 6
                                        _6638 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6638] = t + _2107 - (_4321 * _2107 / _4321)
                                        mem[_6638 + 32] = _6426
                                    else:
                                        u = _6498 + 32
                                        v = mem[64]
                                        idx = mem[_6498]
                                        while idx >= 32:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_6498])] = mem[_6498 + floor32(mem[_6498]) + -(mem[_6498] % 32) + 64 len mem[_6498] % 32] or Mask(8 * -(mem[_6498] % 32) + 32, -(8 * -(mem[_6498] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6498])])
                                        require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                        require t + _2107 - (_4321 * _2107 / _4321) > 0
                                        require _6426 > block.timestamp
                                        mem[0] = address(_2102)
                                        mem[32] = 6
                                        _8272 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8272] = t + _2107 - (_4321 * _2107 / _4321)
                                        mem[_8272 + 32] = _6426
                                    uint256(grantedLocks[address(_2102)].field_0)++
                                    mem[0] = sha3(address(_2102), 6)
                                    uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t + _2107 - (_4321 * _2107 / _4321)
                                    uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _6426
                                    mem[mem[64]] = address(_2102)
                                    mem[mem[64] + 32] = t + _2107 - (_4321 * _2107 / _4321)
                                    mem[mem[64] + 64] = _6426
                                    emit Locked(address(_2102), t + _2107 - (_4321 * _2107 / _4321), _6426);
                                    s = s + 1
                                    t = t + _2107 - (_4321 * _2107 / _4321)
                                    continue 
                else:
                    t = _4289 + 32
                    u = mem[64]
                    s = mem[_4289]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_4289])] = mem[_4289 + floor32(mem[_4289]) + -(mem[_4289] % 32) + 64 len mem[_4289] % 32] or Mask(8 * -(mem[_4289] % 32) + 32, -(8 * -(mem[_4289] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4289])])
                    mem[mem[64] + 6] = 4
                    _6236 = sha3(mem[mem[64] len 6], 4)
                    mem[0] = msg.sender
                    mem[32] = _6236
                    require stor[_6236][address(msg.sender)]
                    require _2105 >= _2107
                    _6345 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                    if mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                        require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if not mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            require 0 <= _2107
                            if _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                                s = 0
                                t = _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                while s < _6345:
                                    if s != _6345 - 1:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _8140 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _8168 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8168] = 6
                                        mem[_8168 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _8140 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _8310 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8310] = t
                                            mem[_8310 + 32] = _8140
                                        else:
                                            u = _8168 + 32
                                            v = mem[64]
                                            idx = mem[_8168]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_8168])] = mem[_8168 + floor32(mem[_8168]) + -(mem[_8168] % 32) + 64 len mem[_8168] % 32] or Mask(8 * -(mem[_8168] % 32) + 32, -(8 * -(mem[_8168] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8168])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _8140 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _9379 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9379] = t
                                            mem[_9379 + 32] = _8140
                                        uint256(grantedLocks[address(_2102)].field_0)++
                                        mem[0] = sha3(address(_2102), 6)
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _8140
                                        mem[mem[64]] = address(_2102)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _8140
                                        emit Locked(address(_2102), t, _8140);
                                        s = s + 1
                                        t = t
                                        continue 
                                    if _2107 <= 0:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _8169 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _8179 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8179] = 6
                                        mem[_8179 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _8169 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _8422 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8422] = t
                                            mem[_8422 + 32] = _8169
                                        else:
                                            u = _8179 + 32
                                            v = mem[64]
                                            idx = mem[_8179]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_8179])] = mem[_8179 + floor32(mem[_8179]) + -(mem[_8179] % 32) + 64 len mem[_8179] % 32] or Mask(8 * -(mem[_8179] % 32) + 32, -(8 * -(mem[_8179] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8179])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _8169 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _9386 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9386] = t
                                            mem[_9386 + 32] = _8169
                                        uint256(grantedLocks[address(_2102)].field_0)++
                                        mem[0] = sha3(address(_2102), 6)
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _8169
                                        mem[mem[64]] = address(_2102)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _8169
                                        emit Locked(address(_2102), t, _8169);
                                        s = s + 1
                                        t = t
                                        continue 
                                    require t + _2107 >= t
                                    require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                    _8318 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                    _8428 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8428] = 6
                                    mem[_8428 + 32] = 'lockup'
                                    if msg.sender == owner:
                                        require t + _2107 > 0
                                        require _8318 > block.timestamp
                                        mem[0] = address(_2102)
                                        mem[32] = 6
                                        _8573 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8573] = t + _2107
                                        mem[_8573 + 32] = _8318
                                    else:
                                        u = _8428 + 32
                                        v = mem[64]
                                        idx = mem[_8428]
                                        while idx >= 32:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_8428])] = mem[_8428 + floor32(mem[_8428]) + -(mem[_8428] % 32) + 64 len mem[_8428] % 32] or Mask(8 * -(mem[_8428] % 32) + 32, -(8 * -(mem[_8428] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8428])])
                                        require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                        require t + _2107 > 0
                                        require _8318 > block.timestamp
                                        mem[0] = address(_2102)
                                        mem[32] = 6
                                        _9393 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9393] = t + _2107
                                        mem[_9393 + 32] = _8318
                                    uint256(grantedLocks[address(_2102)].field_0)++
                                    mem[0] = sha3(address(_2102), 6)
                                    uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t + _2107
                                    uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _8318
                                    mem[mem[64]] = address(_2102)
                                    mem[mem[64] + 32] = t + _2107
                                    mem[mem[64] + 64] = _8318
                                    emit Locked(address(_2102), t + _2107, _8318);
                                    s = s + 1
                                    t = t + _2107
                                    continue 
                        else:
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] * _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] == _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] * _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] <= _2107
                            if _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                                s = 0
                                t = _2107 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                while s < _6345:
                                    if s != _6345 - 1:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _8136 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _8166 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8166] = 6
                                        mem[_8166 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _8136 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _8300 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8300] = t
                                            mem[_8300 + 32] = _8136
                                        else:
                                            u = _8166 + 32
                                            v = mem[64]
                                            idx = mem[_8166]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_8166])] = mem[_8166 + floor32(mem[_8166]) + -(mem[_8166] % 32) + 64 len mem[_8166] % 32] or Mask(8 * -(mem[_8166] % 32) + 32, -(8 * -(mem[_8166] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8166])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _8136 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _9358 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9358] = t
                                            mem[_9358 + 32] = _8136
                                        uint256(grantedLocks[address(_2102)].field_0)++
                                        mem[0] = sha3(address(_2102), 6)
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _8136
                                        mem[mem[64]] = address(_2102)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _8136
                                        emit Locked(address(_2102), t, _8136);
                                        s = s + 1
                                        t = t
                                        continue 
                                    if _2107 - (_6345 * _2107 / _6345) <= 0:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _8167 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _8178 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8178] = 6
                                        mem[_8178 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _8167 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _8408 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8408] = t
                                            mem[_8408 + 32] = _8167
                                        else:
                                            u = _8178 + 32
                                            v = mem[64]
                                            idx = mem[_8178]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_8178])] = mem[_8178 + floor32(mem[_8178]) + -(mem[_8178] % 32) + 64 len mem[_8178] % 32] or Mask(8 * -(mem[_8178] % 32) + 32, -(8 * -(mem[_8178] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8178])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _8167 > block.timestamp
                                            mem[0] = address(_2102)
                                            mem[32] = 6
                                            _9365 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9365] = t
                                            mem[_9365 + 32] = _8167
                                        uint256(grantedLocks[address(_2102)].field_0)++
                                        mem[0] = sha3(address(_2102), 6)
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _8167
                                        mem[mem[64]] = address(_2102)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _8167
                                        emit Locked(address(_2102), t, _8167);
                                        s = s + 1
                                        t = t
                                        continue 
                                    require t + _2107 - (_6345 * _2107 / _6345) >= t
                                    require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                    _8308 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                    _8414 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8414] = 6
                                    mem[_8414 + 32] = 'lockup'
                                    if msg.sender == owner:
                                        require t + _2107 - (_6345 * _2107 / _6345) > 0
                                        require _8308 > block.timestamp
                                        mem[0] = address(_2102)
                                        mem[32] = 6
                                        _8565 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8565] = t + _2107 - (_6345 * _2107 / _6345)
                                        mem[_8565 + 32] = _8308
                                    else:
                                        u = _8414 + 32
                                        v = mem[64]
                                        idx = mem[_8414]
                                        while idx >= 32:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_8414])] = mem[_8414 + floor32(mem[_8414]) + -(mem[_8414] % 32) + 64 len mem[_8414] % 32] or Mask(8 * -(mem[_8414] % 32) + 32, -(8 * -(mem[_8414] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8414])])
                                        require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                        require t + _2107 - (_6345 * _2107 / _6345) > 0
                                        require _8308 > block.timestamp
                                        mem[0] = address(_2102)
                                        mem[32] = 6
                                        _9372 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9372] = t + _2107 - (_6345 * _2107 / _6345)
                                        mem[_9372 + 32] = _8308
                                    uint256(grantedLocks[address(_2102)].field_0)++
                                    mem[0] = sha3(address(_2102), 6)
                                    uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_0) = t + _2107 - (_6345 * _2107 / _6345)
                                    uint256(grantedLocks[address(_2102)][uint256(grantedLocks[address(_2102)].field_0)].field_256) = _8308
                                    mem[mem[64]] = address(_2102)
                                    mem[mem[64] + 32] = t + _2107 - (_6345 * _2107 / _6345)
                                    mem[mem[64] + 64] = _8308
                                    emit Locked(address(_2102), t + _2107 - (_6345 * _2107 / _6345), _8308);
                                    s = s + 1
                                    t = t + _2107 - (_6345 * _2107 / _6345)
                                    continue 
            require not uint8(stor5.field_8)
            require msg.sender
            if uint256(grantedLocks[address(msg.sender)].field_0) <= 0:
                require balanceOf[address(msg.sender)] > 0
                require 0 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= _2105
            else:
                s = 0
                t = 0
                while s < uint256(grantedLocks[address(msg.sender)].field_0):
                    mem[0] = sha3(address(msg.sender), 6)
                    if block.timestamp >= uint256(grantedLocks[address(msg.sender)][s].field_256):
                        s = s + 1
                        t = t
                        continue 
                    require s < uint256(grantedLocks[address(msg.sender)].field_0)
                    mem[0] = sha3(address(msg.sender), 6)
                    require t + uint256(grantedLocks[address(msg.sender)][s].field_0) >= t
                    s = s + 1
                    t = t + uint256(grantedLocks[address(msg.sender)][s].field_0)
                    continue 
                require balanceOf[address(msg.sender)] > t
                require t <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - t >= _2105
            require address(_2102)
            require address(_2102) != msg.sender
            require _2105 <= balanceOf[address(msg.sender)]
            require _2105 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= _2105
            require balanceOf[address(_2102)] + _2105 >= balanceOf[address(_2102)]
            mem[0] = address(_2102)
            mem[32] = 0
            balanceOf[address(_2102)] += _2105
            mem[mem[64]] = _2105
            emit Transfer(_2105, msg.sender, address(_2102));
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288 len 0] = None
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 294] = 4
        mem[0] = msg.sender
        mem[32] = sha3(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288 len 6], 4)
        require stor4[mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288 len 6]][address(msg.sender)]
        require arg1.length > 0
        require arg1.length == arg2.length
        require arg1.length == arg3.length
        require arg4.length > 0
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _4189 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _4193 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _4207 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require not uint8(stor5.field_8)
            require msg.sender
            if uint256(grantedLocks[address(msg.sender)].field_0) <= 0:
                mem[0] = msg.sender
                mem[32] = 0
                require balanceOf[address(msg.sender)] > 0
                require 0 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= mem[(32 * idx) + (32 * arg1.length) + 160]
                _4369 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4369] = 6
                mem[_4369 + 32] = 'lockup'
                if msg.sender == owner:
                    require _4193 >= _4207
                    _4401 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                    if mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                        require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if not mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            require 0 <= _4207
                            if _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                                s = 0
                                t = _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                while s < _4401:
                                    if s != _4401 - 1:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _6301 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _6315 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6315] = 6
                                        mem[_6315 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _6301 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _6448 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6448] = t
                                            mem[_6448 + 32] = _6301
                                        else:
                                            u = _6315 + 32
                                            v = mem[64]
                                            idx = mem[_6315]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_6315])] = mem[_6315 + floor32(mem[_6315]) + -(mem[_6315] % 32) + 64 len mem[_6315] % 32] or Mask(8 * -(mem[_6315] % 32) + 32, -(8 * -(mem[_6315] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6315])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _6301 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _8341 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8341] = t
                                            mem[_8341 + 32] = _6301
                                        uint256(grantedLocks[address(_4189)].field_0)++
                                        mem[0] = sha3(address(_4189), 6)
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _6301
                                        mem[mem[64]] = address(_4189)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _6301
                                        emit Locked(address(_4189), t, _6301);
                                        s = s + 1
                                        t = t
                                        continue 
                                    if _4207 <= 0:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _6316 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _6322 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6322] = 6
                                        mem[_6322 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _6316 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _6534 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6534] = t
                                            mem[_6534 + 32] = _6316
                                        else:
                                            u = _6322 + 32
                                            v = mem[64]
                                            idx = mem[_6322]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_6322])] = mem[_6322 + floor32(mem[_6322]) + -(mem[_6322] % 32) + 64 len mem[_6322] % 32] or Mask(8 * -(mem[_6322] % 32) + 32, -(8 * -(mem[_6322] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6322])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _6316 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _8348 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8348] = t
                                            mem[_8348 + 32] = _6316
                                        uint256(grantedLocks[address(_4189)].field_0)++
                                        mem[0] = sha3(address(_4189), 6)
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _6316
                                        mem[mem[64]] = address(_4189)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _6316
                                        emit Locked(address(_4189), t, _6316);
                                        s = s + 1
                                        t = t
                                        continue 
                                    require t + _4207 >= t
                                    require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                    _6456 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                    _6540 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6540] = 6
                                    mem[_6540 + 32] = 'lockup'
                                    if msg.sender == owner:
                                        require t + _4207 > 0
                                        require _6456 > block.timestamp
                                        mem[0] = address(_4189)
                                        mem[32] = 6
                                        _6664 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6664] = t + _4207
                                        mem[_6664 + 32] = _6456
                                    else:
                                        u = _6540 + 32
                                        v = mem[64]
                                        idx = mem[_6540]
                                        while idx >= 32:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_6540])] = mem[_6540 + floor32(mem[_6540]) + -(mem[_6540] % 32) + 64 len mem[_6540] % 32] or Mask(8 * -(mem[_6540] % 32) + 32, -(8 * -(mem[_6540] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6540])])
                                        require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                        require t + _4207 > 0
                                        require _6456 > block.timestamp
                                        mem[0] = address(_4189)
                                        mem[32] = 6
                                        _8355 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8355] = t + _4207
                                        mem[_8355 + 32] = _6456
                                    uint256(grantedLocks[address(_4189)].field_0)++
                                    mem[0] = sha3(address(_4189), 6)
                                    uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t + _4207
                                    uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _6456
                                    mem[mem[64]] = address(_4189)
                                    mem[mem[64] + 32] = t + _4207
                                    mem[mem[64] + 64] = _6456
                                    emit Locked(address(_4189), t + _4207, _6456);
                                    s = s + 1
                                    t = t + _4207
                                    continue 
                        else:
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] * _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] == _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] * _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] <= _4207
                            if _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                                s = 0
                                t = _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                while s < _4401:
                                    if s != _4401 - 1:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _6297 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _6313 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6313] = 6
                                        mem[_6313 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _6297 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _6438 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6438] = t
                                            mem[_6438 + 32] = _6297
                                        else:
                                            u = _6313 + 32
                                            v = mem[64]
                                            idx = mem[_6313]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_6313])] = mem[_6313 + floor32(mem[_6313]) + -(mem[_6313] % 32) + 64 len mem[_6313] % 32] or Mask(8 * -(mem[_6313] % 32) + 32, -(8 * -(mem[_6313] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6313])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _6297 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _8320 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8320] = t
                                            mem[_8320 + 32] = _6297
                                        uint256(grantedLocks[address(_4189)].field_0)++
                                        mem[0] = sha3(address(_4189), 6)
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _6297
                                        mem[mem[64]] = address(_4189)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _6297
                                        emit Locked(address(_4189), t, _6297);
                                        s = s + 1
                                        t = t
                                        continue 
                                    if _4207 - (_4401 * _4207 / _4401) <= 0:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _6314 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _6321 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6321] = 6
                                        mem[_6321 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _6314 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _6520 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6520] = t
                                            mem[_6520 + 32] = _6314
                                        else:
                                            u = _6321 + 32
                                            v = mem[64]
                                            idx = mem[_6321]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_6321])] = mem[_6321 + floor32(mem[_6321]) + -(mem[_6321] % 32) + 64 len mem[_6321] % 32] or Mask(8 * -(mem[_6321] % 32) + 32, -(8 * -(mem[_6321] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6321])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _6314 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _8327 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8327] = t
                                            mem[_8327 + 32] = _6314
                                        uint256(grantedLocks[address(_4189)].field_0)++
                                        mem[0] = sha3(address(_4189), 6)
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _6314
                                        mem[mem[64]] = address(_4189)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _6314
                                        emit Locked(address(_4189), t, _6314);
                                        s = s + 1
                                        t = t
                                        continue 
                                    require t + _4207 - (_4401 * _4207 / _4401) >= t
                                    require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                    _6446 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                    _6526 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6526] = 6
                                    mem[_6526 + 32] = 'lockup'
                                    if msg.sender == owner:
                                        require t + _4207 - (_4401 * _4207 / _4401) > 0
                                        require _6446 > block.timestamp
                                        mem[0] = address(_4189)
                                        mem[32] = 6
                                        _6656 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6656] = t + _4207 - (_4401 * _4207 / _4401)
                                        mem[_6656 + 32] = _6446
                                    else:
                                        u = _6526 + 32
                                        v = mem[64]
                                        idx = mem[_6526]
                                        while idx >= 32:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_6526])] = mem[_6526 + floor32(mem[_6526]) + -(mem[_6526] % 32) + 64 len mem[_6526] % 32] or Mask(8 * -(mem[_6526] % 32) + 32, -(8 * -(mem[_6526] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6526])])
                                        require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                        require t + _4207 - (_4401 * _4207 / _4401) > 0
                                        require _6446 > block.timestamp
                                        mem[0] = address(_4189)
                                        mem[32] = 6
                                        _8334 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8334] = t + _4207 - (_4401 * _4207 / _4401)
                                        mem[_8334 + 32] = _6446
                                    uint256(grantedLocks[address(_4189)].field_0)++
                                    mem[0] = sha3(address(_4189), 6)
                                    uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t + _4207 - (_4401 * _4207 / _4401)
                                    uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _6446
                                    mem[mem[64]] = address(_4189)
                                    mem[mem[64] + 32] = t + _4207 - (_4401 * _4207 / _4401)
                                    mem[mem[64] + 64] = _6446
                                    emit Locked(address(_4189), t + _4207 - (_4401 * _4207 / _4401), _6446);
                                    s = s + 1
                                    t = t + _4207 - (_4401 * _4207 / _4401)
                                    continue 
                else:
                    t = _4369 + 32
                    u = mem[64]
                    s = mem[_4369]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_4369])] = mem[_4369 + floor32(mem[_4369]) + -(mem[_4369] % 32) + 64 len mem[_4369] % 32] or Mask(8 * -(mem[_4369] % 32) + 32, -(8 * -(mem[_4369] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4369])])
                    mem[mem[64] + 6] = 4
                    _6241 = sha3(mem[mem[64] len 6], 4)
                    mem[0] = msg.sender
                    mem[32] = _6241
                    require stor[_6241][address(msg.sender)]
                    require _4193 >= _4207
                    _6354 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                    if mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                        require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if not mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            require 0 <= _4207
                            if _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                                s = 0
                                t = _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                while s < _6354:
                                    if s != _6354 - 1:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _8154 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _8172 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8172] = 6
                                        mem[_8172 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _8154 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _8372 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8372] = t
                                            mem[_8372 + 32] = _8154
                                        else:
                                            u = _8172 + 32
                                            v = mem[64]
                                            idx = mem[_8172]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_8172])] = mem[_8172 + floor32(mem[_8172]) + -(mem[_8172] % 32) + 64 len mem[_8172] % 32] or Mask(8 * -(mem[_8172] % 32) + 32, -(8 * -(mem[_8172] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8172])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _8154 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _9421 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9421] = t
                                            mem[_9421 + 32] = _8154
                                        uint256(grantedLocks[address(_4189)].field_0)++
                                        mem[0] = sha3(address(_4189), 6)
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _8154
                                        mem[mem[64]] = address(_4189)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _8154
                                        emit Locked(address(_4189), t, _8154);
                                        s = s + 1
                                        t = t
                                        continue 
                                    if _4207 <= 0:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _8173 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _8181 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8181] = 6
                                        mem[_8181 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _8173 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _8450 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8450] = t
                                            mem[_8450 + 32] = _8173
                                        else:
                                            u = _8181 + 32
                                            v = mem[64]
                                            idx = mem[_8181]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_8181])] = mem[_8181 + floor32(mem[_8181]) + -(mem[_8181] % 32) + 64 len mem[_8181] % 32] or Mask(8 * -(mem[_8181] % 32) + 32, -(8 * -(mem[_8181] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8181])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _8173 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _9428 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9428] = t
                                            mem[_9428 + 32] = _8173
                                        uint256(grantedLocks[address(_4189)].field_0)++
                                        mem[0] = sha3(address(_4189), 6)
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _8173
                                        mem[mem[64]] = address(_4189)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _8173
                                        emit Locked(address(_4189), t, _8173);
                                        s = s + 1
                                        t = t
                                        continue 
                                    require t + _4207 >= t
                                    require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                    _8380 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                    _8456 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8456] = 6
                                    mem[_8456 + 32] = 'lockup'
                                    if msg.sender == owner:
                                        require t + _4207 > 0
                                        require _8380 > block.timestamp
                                        mem[0] = address(_4189)
                                        mem[32] = 6
                                        _8592 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8592] = t + _4207
                                        mem[_8592 + 32] = _8380
                                    else:
                                        u = _8456 + 32
                                        v = mem[64]
                                        idx = mem[_8456]
                                        while idx >= 32:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_8456])] = mem[_8456 + floor32(mem[_8456]) + -(mem[_8456] % 32) + 64 len mem[_8456] % 32] or Mask(8 * -(mem[_8456] % 32) + 32, -(8 * -(mem[_8456] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8456])])
                                        require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                        require t + _4207 > 0
                                        require _8380 > block.timestamp
                                        mem[0] = address(_4189)
                                        mem[32] = 6
                                        _9435 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9435] = t + _4207
                                        mem[_9435 + 32] = _8380
                                    uint256(grantedLocks[address(_4189)].field_0)++
                                    mem[0] = sha3(address(_4189), 6)
                                    uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t + _4207
                                    uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _8380
                                    mem[mem[64]] = address(_4189)
                                    mem[mem[64] + 32] = t + _4207
                                    mem[mem[64] + 64] = _8380
                                    emit Locked(address(_4189), t + _4207, _8380);
                                    s = s + 1
                                    t = t + _4207
                                    continue 
                        else:
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] * _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] == _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] * _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] <= _4207
                            if _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                                s = 0
                                t = _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                while s < _6354:
                                    if s != _6354 - 1:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _8150 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _8170 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8170] = 6
                                        mem[_8170 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _8150 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _8362 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8362] = t
                                            mem[_8362 + 32] = _8150
                                        else:
                                            u = _8170 + 32
                                            v = mem[64]
                                            idx = mem[_8170]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_8170])] = mem[_8170 + floor32(mem[_8170]) + -(mem[_8170] % 32) + 64 len mem[_8170] % 32] or Mask(8 * -(mem[_8170] % 32) + 32, -(8 * -(mem[_8170] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8170])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _8150 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _9400 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9400] = t
                                            mem[_9400 + 32] = _8150
                                        uint256(grantedLocks[address(_4189)].field_0)++
                                        mem[0] = sha3(address(_4189), 6)
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _8150
                                        mem[mem[64]] = address(_4189)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _8150
                                        emit Locked(address(_4189), t, _8150);
                                        s = s + 1
                                        t = t
                                        continue 
                                    if _4207 - (_6354 * _4207 / _6354) <= 0:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _8171 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _8180 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8180] = 6
                                        mem[_8180 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _8171 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _8436 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8436] = t
                                            mem[_8436 + 32] = _8171
                                        else:
                                            u = _8180 + 32
                                            v = mem[64]
                                            idx = mem[_8180]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_8180])] = mem[_8180 + floor32(mem[_8180]) + -(mem[_8180] % 32) + 64 len mem[_8180] % 32] or Mask(8 * -(mem[_8180] % 32) + 32, -(8 * -(mem[_8180] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8180])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _8171 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _9407 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9407] = t
                                            mem[_9407 + 32] = _8171
                                        uint256(grantedLocks[address(_4189)].field_0)++
                                        mem[0] = sha3(address(_4189), 6)
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _8171
                                        mem[mem[64]] = address(_4189)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _8171
                                        emit Locked(address(_4189), t, _8171);
                                        s = s + 1
                                        t = t
                                        continue 
                                    require t + _4207 - (_6354 * _4207 / _6354) >= t
                                    require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                    _8370 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                    _8442 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8442] = 6
                                    mem[_8442 + 32] = 'lockup'
                                    if msg.sender == owner:
                                        require t + _4207 - (_6354 * _4207 / _6354) > 0
                                        require _8370 > block.timestamp
                                        mem[0] = address(_4189)
                                        mem[32] = 6
                                        _8584 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8584] = t + _4207 - (_6354 * _4207 / _6354)
                                        mem[_8584 + 32] = _8370
                                    else:
                                        u = _8442 + 32
                                        v = mem[64]
                                        idx = mem[_8442]
                                        while idx >= 32:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_8442])] = mem[_8442 + floor32(mem[_8442]) + -(mem[_8442] % 32) + 64 len mem[_8442] % 32] or Mask(8 * -(mem[_8442] % 32) + 32, -(8 * -(mem[_8442] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8442])])
                                        require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                        require t + _4207 - (_6354 * _4207 / _6354) > 0
                                        require _8370 > block.timestamp
                                        mem[0] = address(_4189)
                                        mem[32] = 6
                                        _9414 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9414] = t + _4207 - (_6354 * _4207 / _6354)
                                        mem[_9414 + 32] = _8370
                                    uint256(grantedLocks[address(_4189)].field_0)++
                                    mem[0] = sha3(address(_4189), 6)
                                    uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t + _4207 - (_6354 * _4207 / _6354)
                                    uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _8370
                                    mem[mem[64]] = address(_4189)
                                    mem[mem[64] + 32] = t + _4207 - (_6354 * _4207 / _6354)
                                    mem[mem[64] + 64] = _8370
                                    emit Locked(address(_4189), t + _4207 - (_6354 * _4207 / _6354), _8370);
                                    s = s + 1
                                    t = t + _4207 - (_6354 * _4207 / _6354)
                                    continue 
            else:
                s = 0
                t = 0
                while s < uint256(grantedLocks[address(msg.sender)].field_0):
                    mem[0] = sha3(address(msg.sender), 6)
                    if block.timestamp >= uint256(grantedLocks[address(msg.sender)][s].field_256):
                        s = s + 1
                        t = t
                        continue 
                    require s < uint256(grantedLocks[address(msg.sender)].field_0)
                    mem[0] = sha3(address(msg.sender), 6)
                    require t + uint256(grantedLocks[address(msg.sender)][s].field_0) >= t
                    s = s + 1
                    t = t + uint256(grantedLocks[address(msg.sender)][s].field_0)
                    continue 
                mem[0] = msg.sender
                mem[32] = 0
                require balanceOf[address(msg.sender)] > t
                require t <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - t >= mem[(32 * idx) + (32 * arg1.length) + 160]
                _6583 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6583] = 6
                mem[_6583 + 32] = 'lockup'
                if msg.sender == owner:
                    require _4193 >= _4207
                    _6671 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                    if mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                        require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if not mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            require 0 <= _4207
                            if _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                                s = 0
                                t = _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                while s < _6671:
                                    if s != _6671 - 1:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _8164 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _8176 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8176] = 6
                                        mem[_8176 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _8164 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _8392 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8392] = t
                                            mem[_8392 + 32] = _8164
                                        else:
                                            u = _8176 + 32
                                            v = mem[64]
                                            idx = mem[_8176]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_8176])] = mem[_8176 + floor32(mem[_8176]) + -(mem[_8176] % 32) + 64 len mem[_8176] % 32] or Mask(8 * -(mem[_8176] % 32) + 32, -(8 * -(mem[_8176] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8176])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _8164 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _9463 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9463] = t
                                            mem[_9463 + 32] = _8164
                                        uint256(grantedLocks[address(_4189)].field_0)++
                                        mem[0] = sha3(address(_4189), 6)
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _8164
                                        mem[mem[64]] = address(_4189)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _8164
                                        emit Locked(address(_4189), t, _8164);
                                        s = s + 1
                                        t = t
                                        continue 
                                    if _4207 <= 0:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _8177 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _8183 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8183] = 6
                                        mem[_8183 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _8177 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _8478 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8478] = t
                                            mem[_8478 + 32] = _8177
                                        else:
                                            u = _8183 + 32
                                            v = mem[64]
                                            idx = mem[_8183]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_8183])] = mem[_8183 + floor32(mem[_8183]) + -(mem[_8183] % 32) + 64 len mem[_8183] % 32] or Mask(8 * -(mem[_8183] % 32) + 32, -(8 * -(mem[_8183] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8183])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _8177 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _9470 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9470] = t
                                            mem[_9470 + 32] = _8177
                                        uint256(grantedLocks[address(_4189)].field_0)++
                                        mem[0] = sha3(address(_4189), 6)
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _8177
                                        mem[mem[64]] = address(_4189)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _8177
                                        emit Locked(address(_4189), t, _8177);
                                        s = s + 1
                                        t = t
                                        continue 
                                    require t + _4207 >= t
                                    require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                    _8400 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                    _8484 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8484] = 6
                                    mem[_8484 + 32] = 'lockup'
                                    if msg.sender == owner:
                                        require t + _4207 > 0
                                        require _8400 > block.timestamp
                                        mem[0] = address(_4189)
                                        mem[32] = 6
                                        _8609 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8609] = t + _4207
                                        mem[_8609 + 32] = _8400
                                    else:
                                        u = _8484 + 32
                                        v = mem[64]
                                        idx = mem[_8484]
                                        while idx >= 32:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_8484])] = mem[_8484 + floor32(mem[_8484]) + -(mem[_8484] % 32) + 64 len mem[_8484] % 32] or Mask(8 * -(mem[_8484] % 32) + 32, -(8 * -(mem[_8484] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8484])])
                                        require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                        require t + _4207 > 0
                                        require _8400 > block.timestamp
                                        mem[0] = address(_4189)
                                        mem[32] = 6
                                        _9477 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9477] = t + _4207
                                        mem[_9477 + 32] = _8400
                                    uint256(grantedLocks[address(_4189)].field_0)++
                                    mem[0] = sha3(address(_4189), 6)
                                    uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t + _4207
                                    uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _8400
                                    mem[mem[64]] = address(_4189)
                                    mem[mem[64] + 32] = t + _4207
                                    mem[mem[64] + 64] = _8400
                                    emit Locked(address(_4189), t + _4207, _8400);
                                    s = s + 1
                                    t = t + _4207
                                    continue 
                        else:
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] * _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] == _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] * _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] <= _4207
                            if _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                                s = 0
                                t = _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                while s < _6671:
                                    if s != _6671 - 1:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _8160 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _8174 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8174] = 6
                                        mem[_8174 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _8160 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _8382 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8382] = t
                                            mem[_8382 + 32] = _8160
                                        else:
                                            u = _8174 + 32
                                            v = mem[64]
                                            idx = mem[_8174]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_8174])] = mem[_8174 + floor32(mem[_8174]) + -(mem[_8174] % 32) + 64 len mem[_8174] % 32] or Mask(8 * -(mem[_8174] % 32) + 32, -(8 * -(mem[_8174] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8174])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _8160 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _9442 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9442] = t
                                            mem[_9442 + 32] = _8160
                                        uint256(grantedLocks[address(_4189)].field_0)++
                                        mem[0] = sha3(address(_4189), 6)
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _8160
                                        mem[mem[64]] = address(_4189)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _8160
                                        emit Locked(address(_4189), t, _8160);
                                        s = s + 1
                                        t = t
                                        continue 
                                    if _4207 - (_6671 * _4207 / _6671) <= 0:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _8175 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _8182 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8182] = 6
                                        mem[_8182 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _8175 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _8464 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8464] = t
                                            mem[_8464 + 32] = _8175
                                        else:
                                            u = _8182 + 32
                                            v = mem[64]
                                            idx = mem[_8182]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_8182])] = mem[_8182 + floor32(mem[_8182]) + -(mem[_8182] % 32) + 64 len mem[_8182] % 32] or Mask(8 * -(mem[_8182] % 32) + 32, -(8 * -(mem[_8182] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8182])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _8175 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _9449 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9449] = t
                                            mem[_9449 + 32] = _8175
                                        uint256(grantedLocks[address(_4189)].field_0)++
                                        mem[0] = sha3(address(_4189), 6)
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _8175
                                        mem[mem[64]] = address(_4189)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _8175
                                        emit Locked(address(_4189), t, _8175);
                                        s = s + 1
                                        t = t
                                        continue 
                                    require t + _4207 - (_6671 * _4207 / _6671) >= t
                                    require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                    _8390 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                    _8470 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8470] = 6
                                    mem[_8470 + 32] = 'lockup'
                                    if msg.sender == owner:
                                        require t + _4207 - (_6671 * _4207 / _6671) > 0
                                        require _8390 > block.timestamp
                                        mem[0] = address(_4189)
                                        mem[32] = 6
                                        _8601 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8601] = t + _4207 - (_6671 * _4207 / _6671)
                                        mem[_8601 + 32] = _8390
                                    else:
                                        u = _8470 + 32
                                        v = mem[64]
                                        idx = mem[_8470]
                                        while idx >= 32:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_8470])] = mem[_8470 + floor32(mem[_8470]) + -(mem[_8470] % 32) + 64 len mem[_8470] % 32] or Mask(8 * -(mem[_8470] % 32) + 32, -(8 * -(mem[_8470] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8470])])
                                        require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                        require t + _4207 - (_6671 * _4207 / _6671) > 0
                                        require _8390 > block.timestamp
                                        mem[0] = address(_4189)
                                        mem[32] = 6
                                        _9456 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9456] = t + _4207 - (_6671 * _4207 / _6671)
                                        mem[_9456 + 32] = _8390
                                    uint256(grantedLocks[address(_4189)].field_0)++
                                    mem[0] = sha3(address(_4189), 6)
                                    uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t + _4207 - (_6671 * _4207 / _6671)
                                    uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _8390
                                    mem[mem[64]] = address(_4189)
                                    mem[mem[64] + 32] = t + _4207 - (_6671 * _4207 / _6671)
                                    mem[mem[64] + 64] = _8390
                                    emit Locked(address(_4189), t + _4207 - (_6671 * _4207 / _6671), _8390);
                                    s = s + 1
                                    t = t + _4207 - (_6671 * _4207 / _6671)
                                    continue 
                else:
                    t = _6583 + 32
                    u = mem[64]
                    s = mem[_6583]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_6583])] = mem[_6583 + floor32(mem[_6583]) + -(mem[_6583] % 32) + 64 len mem[_6583] % 32] or Mask(8 * -(mem[_6583] % 32) + 32, -(8 * -(mem[_6583] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_6583])])
                    mem[mem[64] + 6] = 4
                    _8082 = sha3(mem[mem[64] len 6], 4)
                    mem[0] = msg.sender
                    mem[32] = _8082
                    require stor[_8082][address(msg.sender)]
                    require _4193 >= _4207
                    _8214 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                    if mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                        require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if not mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            require 0 <= _4207
                            if _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                                s = 0
                                t = _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                while s < _8214:
                                    if s != _8214 - 1:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _9339 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _9343 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9343] = 6
                                        mem[_9343 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _9339 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _9494 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9494] = t
                                            mem[_9494 + 32] = _9339
                                        else:
                                            u = _9343 + 32
                                            v = mem[64]
                                            idx = mem[_9343]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_9343])] = mem[_9343 + floor32(mem[_9343]) + -(mem[_9343] % 32) + 64 len mem[_9343] % 32] or Mask(8 * -(mem[_9343] % 32) + 32, -(8 * -(mem[_9343] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_9343])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _9339 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _9778 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9778] = t
                                            mem[_9778 + 32] = _9339
                                        uint256(grantedLocks[address(_4189)].field_0)++
                                        mem[0] = sha3(address(_4189), 6)
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _9339
                                        mem[mem[64]] = address(_4189)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _9339
                                        emit Locked(address(_4189), t, _9339);
                                        s = s + 1
                                        t = t
                                        continue 
                                    if _4207 <= 0:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _9344 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _9346 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9346] = 6
                                        mem[_9346 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _9344 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _9524 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9524] = t
                                            mem[_9524 + 32] = _9344
                                        else:
                                            u = _9346 + 32
                                            v = mem[64]
                                            idx = mem[_9346]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_9346])] = mem[_9346 + floor32(mem[_9346]) + -(mem[_9346] % 32) + 64 len mem[_9346] % 32] or Mask(8 * -(mem[_9346] % 32) + 32, -(8 * -(mem[_9346] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_9346])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _9344 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _9785 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9785] = t
                                            mem[_9785 + 32] = _9344
                                        uint256(grantedLocks[address(_4189)].field_0)++
                                        mem[0] = sha3(address(_4189), 6)
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _9344
                                        mem[mem[64]] = address(_4189)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _9344
                                        emit Locked(address(_4189), t, _9344);
                                        s = s + 1
                                        t = t
                                        continue 
                                    require t + _4207 >= t
                                    require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                    _9502 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                    _9530 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9530] = 6
                                    mem[_9530 + 32] = 'lockup'
                                    if msg.sender == owner:
                                        require t + _4207 > 0
                                        require _9502 > block.timestamp
                                        mem[0] = address(_4189)
                                        mem[32] = 6
                                        _9572 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9572] = t + _4207
                                        mem[_9572 + 32] = _9502
                                    else:
                                        u = _9530 + 32
                                        v = mem[64]
                                        idx = mem[_9530]
                                        while idx >= 32:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_9530])] = mem[_9530 + floor32(mem[_9530]) + -(mem[_9530] % 32) + 64 len mem[_9530] % 32] or Mask(8 * -(mem[_9530] % 32) + 32, -(8 * -(mem[_9530] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_9530])])
                                        require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                        require t + _4207 > 0
                                        require _9502 > block.timestamp
                                        mem[0] = address(_4189)
                                        mem[32] = 6
                                        _9792 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9792] = t + _4207
                                        mem[_9792 + 32] = _9502
                                    uint256(grantedLocks[address(_4189)].field_0)++
                                    mem[0] = sha3(address(_4189), 6)
                                    uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t + _4207
                                    uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _9502
                                    mem[mem[64]] = address(_4189)
                                    mem[mem[64] + 32] = t + _4207
                                    mem[mem[64] + 64] = _9502
                                    emit Locked(address(_4189), t + _4207, _9502);
                                    s = s + 1
                                    t = t + _4207
                                    continue 
                        else:
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] * _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] == _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                            require mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] * _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] <= _4207
                            if _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] > 0:
                                s = 0
                                t = _4207 / mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                while s < _8214:
                                    if s != _8214 - 1:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _9335 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _9341 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9341] = 6
                                        mem[_9341 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _9335 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _9484 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9484] = t
                                            mem[_9484 + 32] = _9335
                                        else:
                                            u = _9341 + 32
                                            v = mem[64]
                                            idx = mem[_9341]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_9341])] = mem[_9341 + floor32(mem[_9341]) + -(mem[_9341] % 32) + 64 len mem[_9341] % 32] or Mask(8 * -(mem[_9341] % 32) + 32, -(8 * -(mem[_9341] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_9341])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _9335 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _9757 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9757] = t
                                            mem[_9757 + 32] = _9335
                                        uint256(grantedLocks[address(_4189)].field_0)++
                                        mem[0] = sha3(address(_4189), 6)
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _9335
                                        mem[mem[64]] = address(_4189)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _9335
                                        emit Locked(address(_4189), t, _9335);
                                        s = s + 1
                                        t = t
                                        continue 
                                    if _4207 - (_8214 * _4207 / _8214) <= 0:
                                        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                        _9342 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                        _9345 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9345] = 6
                                        mem[_9345 + 32] = 'lockup'
                                        if msg.sender == owner:
                                            require t > 0
                                            require _9342 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _9510 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9510] = t
                                            mem[_9510 + 32] = _9342
                                        else:
                                            u = _9345 + 32
                                            v = mem[64]
                                            idx = mem[_9345]
                                            while idx >= 32:
                                                mem[v] = mem[u]
                                                u = u + 32
                                                v = v + 32
                                                idx = idx - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_9345])] = mem[_9345 + floor32(mem[_9345]) + -(mem[_9345] % 32) + 64 len mem[_9345] % 32] or Mask(8 * -(mem[_9345] % 32) + 32, -(8 * -(mem[_9345] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_9345])])
                                            require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                            require t > 0
                                            require _9342 > block.timestamp
                                            mem[0] = address(_4189)
                                            mem[32] = 6
                                            _9764 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9764] = t
                                            mem[_9764 + 32] = _9342
                                        uint256(grantedLocks[address(_4189)].field_0)++
                                        mem[0] = sha3(address(_4189), 6)
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t
                                        uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _9342
                                        mem[mem[64]] = address(_4189)
                                        mem[mem[64] + 32] = t
                                        mem[mem[64] + 64] = _9342
                                        emit Locked(address(_4189), t, _9342);
                                        s = s + 1
                                        t = t
                                        continue 
                                    require t + _4207 - (_8214 * _4207 / _8214) >= t
                                    require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                                    _9492 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                                    _9516 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9516] = 6
                                    mem[_9516 + 32] = 'lockup'
                                    if msg.sender == owner:
                                        require t + _4207 - (_8214 * _4207 / _8214) > 0
                                        require _9492 > block.timestamp
                                        mem[0] = address(_4189)
                                        mem[32] = 6
                                        _9564 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9564] = t + _4207 - (_8214 * _4207 / _8214)
                                        mem[_9564 + 32] = _9492
                                    else:
                                        u = _9516 + 32
                                        v = mem[64]
                                        idx = mem[_9516]
                                        while idx >= 32:
                                            mem[v] = mem[u]
                                            u = u + 32
                                            v = v + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_9516])] = mem[_9516 + floor32(mem[_9516]) + -(mem[_9516] % 32) + 64 len mem[_9516] % 32] or Mask(8 * -(mem[_9516] % 32) + 32, -(8 * -(mem[_9516] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_9516])])
                                        require stor4[mem[mem[64] len 6]][address(msg.sender)]
                                        require t + _4207 - (_8214 * _4207 / _8214) > 0
                                        require _9492 > block.timestamp
                                        mem[0] = address(_4189)
                                        mem[32] = 6
                                        _9771 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9771] = t + _4207 - (_8214 * _4207 / _8214)
                                        mem[_9771 + 32] = _9492
                                    uint256(grantedLocks[address(_4189)].field_0)++
                                    mem[0] = sha3(address(_4189), 6)
                                    uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_0) = t + _4207 - (_8214 * _4207 / _8214)
                                    uint256(grantedLocks[address(_4189)][uint256(grantedLocks[address(_4189)].field_0)].field_256) = _9492
                                    mem[mem[64]] = address(_4189)
                                    mem[mem[64] + 32] = t + _4207 - (_8214 * _4207 / _8214)
                                    mem[mem[64] + 64] = _9492
                                    emit Locked(address(_4189), t + _4207 - (_8214 * _4207 / _8214), _9492);
                                    s = s + 1
                                    t = t + _4207 - (_8214 * _4207 / _8214)
                                    continue 
            require not uint8(stor5.field_8)
            require msg.sender
            if uint256(grantedLocks[address(msg.sender)].field_0) <= 0:
                require balanceOf[address(msg.sender)] > 0
                require 0 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= _4193
            else:
                s = 0
                t = 0
                while s < uint256(grantedLocks[address(msg.sender)].field_0):
                    mem[0] = sha3(address(msg.sender), 6)
                    if block.timestamp >= uint256(grantedLocks[address(msg.sender)][s].field_256):
                        s = s + 1
                        t = t
                        continue 
                    require s < uint256(grantedLocks[address(msg.sender)].field_0)
                    mem[0] = sha3(address(msg.sender), 6)
                    require t + uint256(grantedLocks[address(msg.sender)][s].field_0) >= t
                    s = s + 1
                    t = t + uint256(grantedLocks[address(msg.sender)][s].field_0)
                    continue 
                require balanceOf[address(msg.sender)] > t
                require t <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - t >= _4193
            require address(_4189)
            require address(_4189) != msg.sender
            require _4193 <= balanceOf[address(msg.sender)]
            require _4193 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= _4193
            require balanceOf[address(_4189)] + _4193 >= balanceOf[address(_4189)]
            mem[0] = address(_4189)
            mem[32] = 0
            balanceOf[address(_4189)] += _4193
            mem[mem[64]] = _4193
            emit Transfer(_4193, msg.sender, address(_4189));
            idx = idx + 1
            continue 
    return 1
}



}
