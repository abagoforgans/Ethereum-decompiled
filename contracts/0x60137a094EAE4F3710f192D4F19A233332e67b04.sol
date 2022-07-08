contract main {




// =====================  Runtime code  =====================


#
#  - multiTransfer(address[] arg1, uint256[] arg2)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_6c76c2a1(?)
#  - transferAndLock(address arg1, uint256 arg2, uint256 arg3)
#  - withdrawTokens()
#  - sub_9f9b58d3(?)
#  - unlock()
#  - transfer(address arg1, uint256 arg2)
#  - multiTransferFrom(address arg1, address[] arg2, uint256[] arg3)
#
const sub_32a49578(?) = 3

const sub_3b5764eb(?) = 5

const sub_40dce49a(?) = 2

const sub_700d85ae(?) = 7

const sub_97599fd9(?) = 6

const WHITELIST = 4

const ADMIN = 1


bool stor0; offset 256
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint256 stor0; offset 8
mapping of uint8 stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct stor4;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 unlockTime;
uint256 sub_e87a7a59;
uint256 totalSupply;
uint256 sub_53f74a7e;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function isAdmin(address arg1) {
    require arg1
    return bool(stor1[1][address(arg1)])
}

function unlockTime() {
    return unlockTime
}

function decimals() {
    return decimals
}

function isWhitelisted(address arg1) {
    require arg1
    return bool(stor1[4][address(arg1)])
}

function sub_53f74a7e(?) {
    return sub_53f74a7e
}

function sub_551530d6(?) {
    require arg1
    return bool(stor1[3][address(arg1)])
}

function paused() {
    return bool(uint8(stor0.field_0))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isSwapper(address arg1) {
    require arg1
    return bool(stor1[7][address(arg1)])
}

function sub_bc9ac68c(?) {
    require arg1
    return bool(stor1[6][address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function isFrozen(address arg1) {
    require arg1
    return bool(stor1[5][address(arg1)])
}

function sub_e87a7a59(?) {
    return sub_e87a7a59
}

function sub_f7af4a30(?) {
    require arg1
    return bool(stor1[2][address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_ae1ccf2c(?) {
    if not uint8(stor0.field_0):
        return bool(uint8(stor0.field_0))
    return bool(uint8(stor0.field_8))
}

function sub_e19e4349(?) {
    require msg.sender
    require stor1[6][address(msg.sender)]
    stor1[6][address(msg.sender)] = 0
    emit 0xe1900eb0: 6, msg.sender
}

function sub_40abfe26(?) {
    require msg.sender
    require stor1[6][address(msg.sender)]
    require arg1
    require not stor1[6][address(arg1)]
    stor1[6][address(arg1)] = 1
    emit 0x108cdba0: 6, arg1
}

function sub_13c3e409(?) {
    require msg.sender
    require stor1[6][address(msg.sender)]
    require arg1
    require stor1[2][address(arg1)]
    stor1[2][address(arg1)] = 0
    emit 0xe1900eb0: 2, arg1
    emit 0xd1150a5b: arg1
}

function sub_a75d5254(?) {
    require msg.sender
    require stor1[6][address(msg.sender)]
    require arg1
    require stor1[1][address(arg1)]
    stor1[1][address(arg1)] = 0
    emit 0xe1900eb0: 1, arg1
    emit 0xdd03a410: arg1
}

function sub_89cf785a(?) {
    require msg.sender
    require stor1[6][address(msg.sender)]
    require arg1
    require not stor1[2][address(arg1)]
    stor1[2][address(arg1)] = 1
    emit 0x108cdba0: 2, arg1
    emit 0x31f2f473: arg1
}

function setUnlockTime(uint256 arg1) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    unlockTime = arg1
    emit 0x285ed4ca: arg1
}

function sub_25db64c0(?) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require stor1[3][address(arg1)]
    stor1[3][address(arg1)] = 0
    emit 0xe1900eb0: 3, arg1
}

function sub_ce531ff1(?) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require not stor1[3][address(arg1)]
    stor1[3][address(arg1)] = 1
    emit 0x108cdba0: 3, arg1
}

function unfreeze(address arg1) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require stor1[5][address(arg1)]
    stor1[5][address(arg1)] = 0
    emit 0xe1900eb0: 5, arg1
}

function freeze(address arg1) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require not stor1[5][address(arg1)]
    stor1[5][address(arg1)] = 1
    emit 0x108cdba0: 5, arg1
}

function removeSwapper(address arg1) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require stor1[7][address(arg1)]
    stor1[7][address(arg1)] = 0
    emit 0xe1900eb0: 7, arg1
}

function addSwapper(address arg1) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require not stor1[7][address(arg1)]
    stor1[7][address(arg1)] = 1
    emit 0x108cdba0: 7, arg1
}

function addToWhitelist(address arg1) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require not stor1[4][address(arg1)]
    stor1[4][address(arg1)] = 1
    emit 0x108cdba0: 4, arg1
}

function removeFromWhitelist(address arg1) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require stor1[4][address(arg1)]
    stor1[4][address(arg1)] = 0
    emit 0xe1900eb0: 4, arg1
}

function sub_3192d50a(?) {
    require not uint8(stor0.field_0)
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require stor1[2][address(arg1)]
    stor1[2][address(arg1)] = 0
    emit 0xe1900eb0: 2, arg1
}

function sub_380a75bf(?) {
    require not uint8(stor0.field_0)
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require not stor1[2][address(arg1)]
    stor1[2][address(arg1)] = 1
    emit 0x108cdba0: 2, arg1
}

function removeAdmin(address arg1) {
    require not uint8(stor0.field_0)
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require stor1[1][address(arg1)]
    stor1[1][address(arg1)] = 0
    emit 0xe1900eb0: 1, arg1
}

function addAdmin(address arg1) {
    require not uint8(stor0.field_0)
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require not stor1[1][address(arg1)]
    stor1[1][address(arg1)] = 1
    emit 0x108cdba0: 1, arg1
}

function pause() {
    require not uint8(stor0.field_0)
    require msg.sender
    if not stor1[2][address(msg.sender)]:
        require msg.sender
        if not stor1[1][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(stor1[2][address(msg.sender)]))
    stor0.field_256 % 1 = 0
    emit Paused(msg.sender, bool(stor1[2][address(msg.sender)]));
}

function totalLocked(address arg1) {
    idx = 0
    s = 0
    while idx < stor4[address(arg1)].field_0:
        require idx < stor4[address(arg1)].field_0
        _10 = sha3(sha3(address(arg1), 4))
        require stor4[address(arg1)][idx].field_0 + s >= s
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = stor4[address(arg1)][idx].field_0 + s
        continue 
    return (stor[(2 * stor4[address(arg1)].field_0) + _10] * stor4[address(arg1)].field_0)
}

function sub_6f9336a9(?) {
    idx = 0
    s = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        if stor4[address(arg1)][idx].field_256 >= block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require idx < stor4[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 4)
        require stor4[address(arg1)][idx].field_0 + s >= s
        idx = idx + 1
        s = stor4[address(arg1)][idx].field_0 + s
        continue 
    return s
}

function unpause() {
    require uint8(stor0.field_0)
    require msg.sender
    if not stor1[2][address(msg.sender)]:
        require msg.sender
        if not stor1[1][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
        if uint8(stor0.field_0):
            if uint8(stor0.field_8):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Only attorneys can unpause after an attorney has paused'
    uint16(stor0.field_0) = 0
    emit Unpaused(msg.sender);
}

function unlockedBalanceOf(address arg1) {
    idx = 0
    s = 0
    while idx < stor4[address(arg1)].field_0:
        require idx < stor4[address(arg1)].field_0
        _10 = sha3(sha3(address(arg1), 4))
        require stor4[address(arg1)][idx].field_0 + s >= s
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = stor4[address(arg1)][idx].field_0 + s
        continue 
    require stor[(2 * stor4[address(arg1)].field_0) + _10] * stor4[address(arg1)].field_0 <= balanceOf[address(arg1)]
    return (balanceOf[address(arg1)] - (stor[(2 * stor4[address(arg1)].field_0) + _10] * stor4[address(arg1)].field_0))
}

function approve(address arg1, uint256 arg2) {
    require msg.sender
    require not stor1[5][address(msg.sender)]
    require not uint8(stor0.field_0)
    if block.timestamp <= unlockTime:
        require msg.sender
        if not stor1[1][address(msg.sender)]:
            require msg.sender
            if not stor1[2][address(msg.sender)]:
                require msg.sender
                if not stor1[4][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'cMust be whitelisted, admin, or ttorney when the contract is loked'
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function multiUnfreeze(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    if 0 >= arg1.length:
        revert with 0, 'Account array must not be empty'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require stor1[5][address(mem[(32 * idx) + 128])]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(5, 1)
        stor1[5][address(mem[(32 * idx) + 128])] = 0
        emit 0xe1900eb0: 5, mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function multiFreeze(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    if 0 >= arg1.length:
        revert with 0, 'Account array must not be empty'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require not stor1[5][address(mem[(32 * idx) + 128])]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(5, 1)
        stor1[5][address(mem[(32 * idx) + 128])] = 1
        emit 0x108cdba0: 5, mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require msg.sender
    require not stor1[5][address(msg.sender)]
    require not uint8(stor0.field_0)
    if block.timestamp <= unlockTime:
        require msg.sender
        if not stor1[1][address(msg.sender)]:
            require msg.sender
            if not stor1[2][address(msg.sender)]:
                require msg.sender
                if not stor1[4][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'cMust be whitelisted, admin, or ttorney when the contract is loked'
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require msg.sender
    require not stor1[5][address(msg.sender)]
    require not uint8(stor0.field_0)
    if block.timestamp <= unlockTime:
        require msg.sender
        if not stor1[1][address(msg.sender)]:
            require msg.sender
            if not stor1[2][address(msg.sender)]:
                require msg.sender
                if not stor1[4][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'cMust be whitelisted, admin, or ttorney when the contract is loked'
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function locksOf(address arg1) {
    if uint255(stor4[address(arg1)].field_0):
        mem[128 len 64 * stor4[address(arg1)].field_0] = code.data[12965 len 64 * stor4[address(arg1)].field_0]
    idx = 0
    while idx < stor4[address(arg1)].field_0:
        require 2 * idx < 2 * stor4[address(arg1)].field_0
        mem[(64 * idx) + 128] = stor4[address(arg1)][idx].field_0
        require idx < stor4[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 4)
        require (2 * idx) + 1 < 2 * stor4[address(arg1)].field_0
        mem[(32 * (2 * idx) + 1) + 128] = stor4[address(arg1)][idx].field_256
        idx = idx + 1
        continue 
    mem[(64 * stor4[address(arg1)].field_0) + 128] = 32
    mem[(64 * stor4[address(arg1)].field_0) + 160] = 2 * stor4[address(arg1)].field_0
    s = 0
    while stor4[address(arg1)].field_0 < 64 * stor4[address(arg1)].field_0:
        mem[(66 * stor4[address(arg1)].field_0) + 192] = mem[stor4[address(arg1)].field_0 + 128]
        s = stor4[address(arg1)].field_0 + 32
        continue 
    return memory
      from (64 * stor4[address(arg1)].field_0) + 128
       len (192 * stor4[address(arg1)].field_0) + 64
}



}
