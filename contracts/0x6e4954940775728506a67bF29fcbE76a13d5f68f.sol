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

const sub_4a2d5c9d(?) = 8

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
mapping of uint8 stor2;
mapping of struct text;
uint256 sub_8027d6cc;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct stor7;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 unlockTime;
uint256 sub_e87a7a59;
uint256 totalSupply;
uint256 sub_53f74a7e;
mapping of uint256 sub_ee809b9f;
mapping of uint256 sub_a67eeba3;
mapping of uint256 sub_049dabe5;
mapping of uint256 sub_18c3911e;
mapping of uint256 sub_3e01bf8c;
mapping of uint256 sub_6649635b;
mapping of uint256 sub_e6f2f60d;
mapping of uint256 sub_0256dd50;
uint8 sub_7c365c2c;

function sub_0256dd50(?) {
    require arg1
    return sub_0256dd50[address(arg1)]
}

function sub_049dabe5(?) {
    require arg1
    return sub_049dabe5[address(arg1)]
}

function name() {
    return name[0 len name.length]
}

function isDelegate(address arg1) {
    require arg1
    return bool(stor1[8][address(arg1)])
}

function totalSupply() {
    return totalSupply
}

function sub_18c3911e(?) {
    require arg1
    return sub_18c3911e[address(arg1)]
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

function sub_3e01bf8c(?) {
    require arg1
    return sub_3e01bf8c[address(arg1)]
}

function hasVoted(address arg1, uint256 arg2) {
    return bool(stor2[arg2][address(arg1)])
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

function sub_6649635b(?) {
    require arg1
    return sub_6649635b[address(arg1)]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7c365c2c(?) {
    return bool(sub_7c365c2c)
}

function getText(uint256 arg1) {
    return text[arg1][1][0 len text[arg1][1].length].field_0
}

function sub_8027d6cc(?) {
    return sub_8027d6cc
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a67eeba3(?) {
    require arg1
    return sub_a67eeba3[address(arg1)]
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

function sub_e6f2f60d(?) {
    require arg1
    return sub_e6f2f60d[address(arg1)]
}

function sub_e87a7a59(?) {
    return sub_e87a7a59
}

function sub_ee809b9f(?) {
    require arg1
    return sub_ee809b9f[address(arg1)]
}

function sub_f7af4a30(?) {
    require arg1
    return bool(stor1[2][address(arg1)])
}

function getVotes(uint256 arg1) {
    return uint64(text[arg1].field_0)
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

function sub_76d34c8c(?) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    sub_7c365c2c = uint8(arg1)
}

function sub_243042ac(?) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    sub_0256dd50[address(arg1)] = arg2
}

function sub_4345080f(?) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    sub_a67eeba3[address(arg1)] = arg2
}

function sub_4bf76f0e(?) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    sub_e6f2f60d[address(arg1)] = arg2
}

function sub_71e4b8c7(?) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    sub_049dabe5[address(arg1)] = arg2
}

function sub_7ac4fbcb(?) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    sub_18c3911e[address(arg1)] = arg2
}

function sub_d7908316(?) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    sub_3e01bf8c[address(arg1)] = arg2
}

function sub_f2af3b62(?) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    sub_6649635b[address(arg1)] = arg2
}

function sub_fcee56d7(?) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    sub_ee809b9f[address(arg1)] = arg2
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

function removeDelegate(address arg1) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require stor1[8][address(arg1)]
    stor1[8][address(arg1)] = 0
    emit 0xe1900eb0: 8, arg1
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

function addDelegate(address arg1) {
    require msg.sender
    if not stor1[1][address(msg.sender)]:
        require msg.sender
        if not stor1[2][address(msg.sender)]:
            revert with 0, 'Must be an admin or attorney'
    require arg1
    require not stor1[8][address(arg1)]
    stor1[8][address(arg1)] = 1
    emit 0x108cdba0: 8, arg1
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
    while idx < stor7[address(arg1)].field_0:
        require idx < stor7[address(arg1)].field_0
        _10 = sha3(sha3(address(arg1), 7))
        require stor7[address(arg1)][idx].field_0 + s >= s
        mem[0] = arg1
        mem[32] = 7
        idx = idx + 1
        s = stor7[address(arg1)][idx].field_0 + s
        continue 
    return (stor[(2 * stor7[address(arg1)].field_0) + _10] * stor7[address(arg1)].field_0)
}

function sub_6f9336a9(?) {
    idx = 0
    s = 0
    while idx < stor7[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 7)
        if stor7[address(arg1)][idx].field_256 >= block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require idx < stor7[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 7)
        require stor7[address(arg1)][idx].field_0 + s >= s
        idx = idx + 1
        s = stor7[address(arg1)][idx].field_0 + s
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

function sub_33b15378(?) {
    if not sub_7c365c2c:
        if balanceOf[address(msg.sender)] <= 0:
            revert with 0, 'Must have a token balance to create a suggestion'
    else:
        require msg.sender
        if not stor1[8][address(msg.sender)]:
            revert with 0, 'Suggestions are restricted, only delegates can create them'
    sub_8027d6cc++
    uint64(text[stor4].field_0) = 0
    Mask(192, 0, text[stor4].field_64) = 1
    text[stor4].field_256 % 1 = 0
    text[stor4][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    emit 0xbf516e0d: sub_8027d6cc, Array(len=arg1.length, data=arg1[all])
}

function unlockedBalanceOf(address arg1) {
    idx = 0
    s = 0
    while idx < stor7[address(arg1)].field_0:
        require idx < stor7[address(arg1)].field_0
        _10 = sha3(sha3(address(arg1), 7))
        require stor7[address(arg1)][idx].field_0 + s >= s
        mem[0] = arg1
        mem[32] = 7
        idx = idx + 1
        s = stor7[address(arg1)][idx].field_0 + s
        continue 
    require stor[(2 * stor7[address(arg1)].field_0) + _10] * stor7[address(arg1)].field_0 <= balanceOf[address(arg1)]
    return (balanceOf[address(arg1)] - (stor[(2 * stor7[address(arg1)].field_0) + _10] * stor7[address(arg1)].field_0))
}

function vote(uint256 arg1) {
    if balanceOf[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must have a token balance to vote'
    if stor2[arg1][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User has already voted on this issue'
    if not uint8(text[arg1].field_64):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Suggestion must exist to be voted on'
    stor2[arg1][address(msg.sender)] = 1
    uint64(text[arg1].field_0) = uint64(uint64(text[arg1].field_0) + 1)
    emit Vote(msg.sender, arg1);
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
    if uint255(stor7[address(arg1)].field_0):
        mem[128 len 64 * stor7[address(arg1)].field_0] = code.data[17338 len 64 * stor7[address(arg1)].field_0]
    idx = 0
    while idx < stor7[address(arg1)].field_0:
        require 2 * idx < 2 * stor7[address(arg1)].field_0
        mem[(64 * idx) + 128] = stor7[address(arg1)][idx].field_0
        require idx < stor7[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 7)
        require (2 * idx) + 1 < 2 * stor7[address(arg1)].field_0
        mem[(32 * (2 * idx) + 1) + 128] = stor7[address(arg1)][idx].field_256
        idx = idx + 1
        continue 
    mem[(64 * stor7[address(arg1)].field_0) + 128] = 32
    mem[(64 * stor7[address(arg1)].field_0) + 160] = 2 * stor7[address(arg1)].field_0
    s = 0
    while stor7[address(arg1)].field_0 < 64 * stor7[address(arg1)].field_0:
        mem[(66 * stor7[address(arg1)].field_0) + 192] = mem[stor7[address(arg1)].field_0 + 128]
        s = stor7[address(arg1)].field_0 + 32
        continue 
    return memory
      from (64 * stor7[address(arg1)].field_0) + 128
       len (192 * stor7[address(arg1)].field_0) + 64
}



}
