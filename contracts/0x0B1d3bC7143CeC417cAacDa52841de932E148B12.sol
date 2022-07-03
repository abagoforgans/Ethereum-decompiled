contract main {




// =====================  Runtime code  =====================


#
#  - multiTransfer(address[] arg1, uint256[] arg2)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transferAndLock(address arg1, uint256 arg2, uint256 arg3)
#  - unlock()
#  - transfer(address arg1, uint256 arg2)
#  - multiTransferFrom(address arg1, address[] arg2, uint256[] arg3)
#
mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
uint8 stor4;
uint8 stor4; offset 8
uint256 stor4; offset 8
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct stor9;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 unlockTime;
uint256 sub_e87a7a59;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function isAdmin(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function unlockTime() {
    return unlockTime
}

function decimals() {
    return decimals
}

function isWhitelisted(address arg1) {
    require arg1
    return bool(stor5[address(arg1)])
}

function sub_551530d6(?) {
    require arg1
    return bool(stor2[address(arg1)])
}

function paused() {
    return bool(uint8(stor4.field_0))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_bc9ac68c(?) {
    require arg1
    return bool(stor6[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function isFrozen(address arg1) {
    require arg1
    return bool(stor3[address(arg1)])
}

function sub_e87a7a59(?) {
    return sub_e87a7a59
}

function sub_f7af4a30(?) {
    require arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_ae1ccf2c(?) {
    if not uint8(stor4.field_0):
        return bool(uint8(stor4.field_0))
    return bool(uint8(stor4.field_8))
}

function sub_e19e4349(?) {
    require msg.sender
    require stor6[address(msg.sender)]
    stor6[address(msg.sender)] = 0
    emit 0x4035d910: msg.sender
}

function sub_40abfe26(?) {
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    emit 0xe5471443: arg1
}

function sub_13c3e409(?) {
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit 0x4cd2f0d8: arg1
    emit 0xd1150a5b: arg1
}

function sub_a75d5254(?) {
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1
    require stor0[address(arg1)]
    stor0[address(arg1)] = 0
    emit AdminRemoved(arg1);
    emit 0xdd03a410: arg1
}

function sub_89cf785a(?) {
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit 0x15067560: arg1
    emit 0x31f2f473: arg1
}

function setUnlockTime(uint256 arg1) {
    require msg.sender
    if not stor0[address(msg.sender)]:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    unlockTime = arg1
    emit 0x285ed4ca: unlockTime
}

function sub_25db64c0(?) {
    require msg.sender
    if not stor0[address(msg.sender)]:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
    emit 0xb08b79e9: arg1
}

function sub_ce531ff1(?) {
    require msg.sender
    if not stor0[address(msg.sender)]:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    emit 0xc64dd4cf: arg1
}

function unfreeze(address arg1) {
    require msg.sender
    if not stor0[address(msg.sender)]:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require stor3[address(arg1)]
    stor3[address(arg1)] = 0
    emit Unfrozen(arg1);
}

function freeze(address arg1) {
    require msg.sender
    if not stor0[address(msg.sender)]:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require not stor3[address(arg1)]
    stor3[address(arg1)] = 1
    emit Frozen(arg1);
}

function addToWhitelist(address arg1) {
    require msg.sender
    if not stor0[address(msg.sender)]:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require not stor5[address(arg1)]
    stor5[address(arg1)] = 1
    emit AddedToWhitelist(arg1);
}

function removeFromWhitelist(address arg1) {
    require msg.sender
    if not stor0[address(msg.sender)]:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require stor5[address(arg1)]
    stor5[address(arg1)] = 0
    emit RemovedFromWhitelist(arg1);
}

function sub_3192d50a(?) {
    require msg.sender
    if not stor0[address(msg.sender)]:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require not uint8(stor4.field_0)
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit 0x4cd2f0d8: arg1
}

function sub_380a75bf(?) {
    require msg.sender
    if not stor0[address(msg.sender)]:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require not uint8(stor4.field_0)
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit 0x15067560: arg1
}

function addAdmin(address arg1) {
    require msg.sender
    if not stor0[address(msg.sender)]:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require not uint8(stor4.field_0)
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function removeAdmin(address arg1) {
    require msg.sender
    if not stor0[address(msg.sender)]:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require not uint8(stor4.field_0)
    require arg1
    require stor0[address(arg1)]
    stor0[address(arg1)] = 0
    emit AdminRemoved(arg1);
}

function pause() {
    require not uint8(stor4.field_0)
    require msg.sender
    if not stor1[address(msg.sender)]:
        require msg.sender
        if not stor0[address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    uint8(stor4.field_0) = 1
    Mask(248, 0, stor4.field_8) = Mask(248, 0, bool(stor1[address(msg.sender)]))
    emit Paused(msg.sender, bool(stor1[address(msg.sender)]));
}

function sub_6f9336a9(?) {
    idx = 0
    s = 0
    while idx < stor9[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 9)
        if stor9[address(arg1)][idx].field_256 >= block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require idx < stor9[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 9)
        require s + stor9[address(arg1)][idx].field_0 >= s
        idx = idx + 1
        s = s + stor9[address(arg1)][idx].field_0
        continue 
    return s
}

function unpause() {
    require uint8(stor4.field_0)
    require msg.sender
    if not stor1[address(msg.sender)]:
        require msg.sender
        if not stor0[address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
        if uint8(stor4.field_0):
            if uint8(stor4.field_8):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Only attorneys can unpause after an attorney has paused'
    uint8(stor4.field_0) = 0
    Mask(248, 0, stor4.field_8) = 0
    emit Unpaused(msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require msg.sender
    require not stor3[address(msg.sender)]
    require not uint8(stor4.field_0)
    if block.timestamp <= unlockTime:
        require msg.sender
        if not stor0[address(msg.sender)]:
            require msg.sender
            if not stor1[address(msg.sender)]:
                require msg.sender
                if not stor5[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Must be whitelisted, admin, or attorney when the contract is locked'
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function multiFreeze(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender
    if not stor0[address(msg.sender)]:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    if arg1.length <= 0:
        revert with 0, 'Account array must not be empty'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require not stor3[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[address(mem[(32 * idx) + 128])] = 1
        emit Frozen(mem[(32 * idx) + 140 len 20]);
        idx = idx + 1
        continue 
}

function multiUnfreeze(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender
    if not stor0[address(msg.sender)]:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    if arg1.length <= 0:
        revert with 0, 'Account array must not be empty'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require stor3[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[address(mem[(32 * idx) + 128])] = 0
        emit Unfrozen(mem[(32 * idx) + 140 len 20]);
        idx = idx + 1
        continue 
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require msg.sender
    require not stor3[address(msg.sender)]
    require not uint8(stor4.field_0)
    if block.timestamp <= unlockTime:
        require msg.sender
        if not stor0[address(msg.sender)]:
            require msg.sender
            if not stor1[address(msg.sender)]:
                require msg.sender
                if not stor5[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Must be whitelisted, admin, or attorney when the contract is locked'
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require msg.sender
    require not stor3[address(msg.sender)]
    require not uint8(stor4.field_0)
    if block.timestamp <= unlockTime:
        require msg.sender
        if not stor0[address(msg.sender)]:
            require msg.sender
            if not stor1[address(msg.sender)]:
                require msg.sender
                if not stor5[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Must be whitelisted, admin, or attorney when the contract is locked'
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function locksOf(address arg1) {
    if stor9[address(arg1)].field_0:
        mem[128 len 64 * stor9[address(arg1)].field_0] = code.data[18897 len 64 * stor9[address(arg1)].field_0]
    idx = 0
    while idx < stor9[address(arg1)].field_0:
        require 2 * idx < 2 * stor9[address(arg1)].field_0
        mem[(64 * idx) + 128] = stor9[address(arg1)][idx].field_0
        require idx < stor9[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 9)
        require (2 * idx) + 1 < 2 * stor9[address(arg1)].field_0
        mem[(32 * (2 * idx) + 1) + 128] = stor9[address(arg1)][idx].field_256
        idx = idx + 1
        continue 
    mem[(64 * stor9[address(arg1)].field_0) + 128] = 32
    mem[(64 * stor9[address(arg1)].field_0) + 160] = 2 * stor9[address(arg1)].field_0
    s = 0
    while stor9[address(arg1)].field_0 < 64 * stor9[address(arg1)].field_0:
        mem[(66 * stor9[address(arg1)].field_0) + 192] = mem[stor9[address(arg1)].field_0 + 128]
        s = stor9[address(arg1)].field_0 + 32
        continue 
    return memory
      from (64 * stor9[address(arg1)].field_0) + 128
       len (192 * stor9[address(arg1)].field_0) + 64
}

function totalLocked(address arg1) {
    idx = 0
    s = 0
    while idx < stor9[address(arg1)].field_0:
        require idx < stor9[address(arg1)].field_0
        require s + stor9[address(arg1)][idx].field_0 >= s
        mem[0] = arg1
        mem[32] = 9
        idx = idx + 1
        s = s + stor9[address(arg1)][idx].field_0
        continue 
    return (s * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0)
}

function unlockedBalanceOf(address arg1) {
    idx = 0
    s = 0
    while idx < stor9[address(arg1)].field_0:
        require idx < stor9[address(arg1)].field_0
        require s + stor9[address(arg1)][idx].field_0 >= s
        mem[0] = arg1
        mem[32] = 9
        idx = idx + 1
        s = s + stor9[address(arg1)][idx].field_0
        continue 
    require s * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 <= balanceOf[address(arg1)]
    return (balanceOf[address(arg1)] - (s * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0 * stor9[address(arg1)].field_0))
}



}
