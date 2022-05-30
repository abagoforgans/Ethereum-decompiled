contract main {


// =======================  Init code  ======================


uint128 stor6; offset 176
uint128 stor6; offset 168
uint128 stor6; offset 160
address stor6;

function _fallback() payable {
    Mask(96, 0, stor6.field_160) = 0
    Mask(88, 0, stor6.field_168) = 0
    Mask(80, 0, stor6.field_176) = 0
    address(stor6.field_0) = msg.sender
    return code.data[165 len 11972]
}



// =====================  Runtime code  =====================


#
#  - mintAndFreeze(address arg1, uint256 arg2, uint64 arg3)
#  - freezeTo(address arg1, uint256 arg2, uint64 arg3)
#  - MainToken()
#
const name = 'GOLD'

const decimals = 17

const symbol = 'GOLD'


uint256 totalSupply;
mapping of uint256 actualBalanceOf;
mapping of uint256 allowance;
mapping of uint64 stor3;
mapping of uint256 stor4;
mapping of uint256 freezingBalanceOf;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint8 stor6; offset 176
uint128 stor6; offset 168
uint128 stor6; offset 160
address owner;

function mintingFinished() {
    return bool(uint8(stor6.field_160))
}

function initialized() {
    return bool(uint8(stor6.field_176))
}

function actualBalanceOf(address arg1) {
    return actualBalanceOf[address(arg1)]
}

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(uint8(stor6.field_168))
}

function owner() {
    return owner
}

function freezingBalanceOf(address arg1) {
    return freezingBalanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) {
    return (actualBalanceOf[address(arg1)] + freezingBalanceOf[address(arg1)])
}

function unpause() {
    require msg.sender == owner
    require uint8(stor6.field_168)
    Mask(88, 0, stor6.field_168) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor6.field_168)
    Mask(88, 0, stor6.field_168) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    Mask(96, 0, stor6.field_160) = 1
    emit MintFinished()
    return 1
}

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= actualBalanceOf[address(msg.sender)]
    require arg1 <= actualBalanceOf[address(msg.sender)]
    actualBalanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function freezingCount(address arg1) {
    mem[0] = 'WISH' or address(arg1) << 64
    mem[32] = 3
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    while uint64(idx):
        mem[0] = 'WISH' or address(arg1) << 64 or uint64(idx)
        mem[32] = 3
        idx = stor3['WISH' or address(arg1) << 64 or uint64(idx)]
        s = s + 1
        continue 
    return s
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require actualBalanceOf[address(arg1)] + arg2 >= actualBalanceOf[address(arg1)]
    actualBalanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor6.field_168)
    require arg1
    require arg2 <= actualBalanceOf[address(msg.sender)]
    require arg2 <= actualBalanceOf[address(msg.sender)]
    actualBalanceOf[address(msg.sender)] -= arg2
    require actualBalanceOf[address(arg1)] + arg2 >= actualBalanceOf[address(arg1)]
    actualBalanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getFreezing(address arg1, uint256 arg2) {
    idx = 0
    s = 0
    while idx < arg2 + 1:
        mem[0] = 'WISH' or address(arg1) << 64 or uint64(s)
        mem[32] = 3
        if stor3['WISH' or address(arg1) << 64 or uint64(s)]:
            idx = idx + 1
            s = stor3['WISH' or address(arg1) << 64 or uint64(s)]
            continue 
        return stor3['WISH' or address(arg1) << 64 or uint64(s)], 0
    return arg2 + 1 << 198, stor4['WISH' or address(arg1) << 64 or 64 * arg2 + 1 % 288230376151711744]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor6.field_168)
    require arg2
    require arg3 <= actualBalanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= actualBalanceOf[address(arg1)]
    actualBalanceOf[address(arg1)] -= arg3
    require actualBalanceOf[address(arg2)] + arg3 >= actualBalanceOf[address(arg2)]
    actualBalanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function releaseOnce() {
    require stor3['WISH' or msg.sender << 64]
    require uint64(block.timestamp) > stor3['WISH' or msg.sender << 64]
    stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]] = 0
    require actualBalanceOf[address(msg.sender)] + stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]] >= actualBalanceOf[address(msg.sender)]
    actualBalanceOf[address(msg.sender)] += stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]
    require stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]] <= freezingBalanceOf[address(msg.sender)]
    freezingBalanceOf[address(msg.sender)] -= stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]
    if not stor3['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]:
        stor3['WISH' or msg.sender << 64] = 0
    else:
        stor3['WISH' or msg.sender << 64] = stor3['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]
        stor3['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]] = 0
    emit Released(stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]], msg.sender);
}

function releaseAll() {
    idx = 0
    s = 0
    while idx < 1:
        mem[0] = 'WISH' or msg.sender << 64 or uint64(s)
        mem[32] = 3
        if stor3['WISH' or msg.sender << 64 or uint64(s)]:
            idx = idx + 1
            s = stor3['WISH' or msg.sender << 64 or uint64(s)]
            continue 
        else:
            return 0
    if not var40002:
        return var40003
    idx = not not var40002
    s = var40001
    t = var40002
    t = var40003
    while idx:
        require stor3['WISH' or msg.sender << 64]
        require uint64(block.timestamp) > stor3['WISH' or msg.sender << 64]
        stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]] = 0
        require actualBalanceOf[address(msg.sender)] + stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]] >= actualBalanceOf[address(msg.sender)]
        actualBalanceOf[address(msg.sender)] += stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]
        require stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]] <= freezingBalanceOf[address(msg.sender)]
        freezingBalanceOf[address(msg.sender)] -= stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]
        if not stor3['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]:
            stor3['WISH' or msg.sender << 64] = 0
        else:
            stor3['WISH' or msg.sender << 64] = stor3['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]
            stor3['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]] = 0
        mem[96] = stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]
        emit Released(stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]], msg.sender);
        idx = 0
        u = 0
        while idx < 1:
            mem[0] = 'WISH' or msg.sender << 64 or uint64(u)
            mem[32] = 3
            if stor3['WISH' or msg.sender << 64 or uint64(u)]:
                idx = idx + 1
                u = stor3['WISH' or msg.sender << 64 or uint64(u)]
                continue 
            return (t + s)
        mem[0] = 'WISH' or msg.sender << 64 or 64
        mem[32] = 4
        idx = not not 64
        s = stor4['WISH' or msg.sender << 64 or 64]
        t = 64
        t = t + s
        continue 
    return t
}



}
