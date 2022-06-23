contract main {




// =====================  Runtime code  =====================


const INITIAL_SUPPLY = 100000000000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of uint256 lockReason;
mapping of struct locked;

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
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function lockReason(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < lockReason[arg1]
    return lockReason[arg1][arg2]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function locked(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return locked[arg1][arg2].field_0, locked[arg1][arg2].field_256, bool(locked[arg1][arg2].field_512)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function tokensLocked(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if locked[address(arg1)][arg2].field_512:
        return 0
    return locked[address(arg1)][arg2].field_0
}

function tokensLockedAtTime(address arg1, bytes32 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if locked[address(arg1)][arg2].field_256 <= arg3:
        return 0
    return locked[address(arg1)][arg2].field_0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor3.field_160)
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function tokensUnlockable(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if locked[address(arg1)][arg2].field_256 > block.timestamp:
        return 0
    if locked[address(arg1)][arg2].field_512:
        return 0
    return locked[address(arg1)][arg2].field_0
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor3.field_160)
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor3.field_160)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function claimToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor3.field_160)
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function extendLock(bytes32 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if locked[address(arg3)][arg1].field_512:
        revert with 0, 'No tokens locked'
    if locked[address(arg3)][arg1].field_0 <= 0:
        revert with 0, 'No tokens locked'
    require locked[address(arg3)][arg1].field_256 + arg2 >= locked[address(arg3)][arg1].field_256
    locked[address(arg3)][arg1].field_256 += arg2
    emit Locked(locked[address(arg3)][arg1].field_0, locked[address(arg3)][arg1].field_256, arg3, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not uint8(stor3.field_160)
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function totalBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = balanceOf[address(arg1)]
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        if locked[address(arg1)][stor7[address(arg1)][idx]].field_512:
            require s >= s
            mem[0] = arg1
            mem[32] = 7
            idx = idx + 1
            s = s
            continue 
        require s + locked[address(arg1)][stor7[address(arg1)][idx]].field_0 >= s
        mem[0] = arg1
        mem[32] = 7
        idx = idx + 1
        s = s + locked[address(arg1)][stor7[address(arg1)][idx]].field_0
        continue 
    return s
}

function sub_c57b58dc(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if locked[address(arg1)][arg2].field_512:
        revert with 0, 'Expired Address'
    require ext_code.size(this.address)
    call this.address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), locked[address(arg1)][arg2].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    locked[address(arg1)][arg2].field_0 = 0
    locked[address(arg1)][arg2].field_256 = 0
    locked[address(arg1)][arg2].field_512 = 0
    emit 0x4888e567: locked[address(arg1)][arg2].field_0, locked[address(arg1)][arg2].field_256, arg1, arg2
    return 1
}

function getUnlockableTokens(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        if locked[address(arg1)][stor7[address(arg1)][idx]].field_256 > block.timestamp:
            require s >= s
            mem[0] = arg1
            mem[32] = 7
            idx = idx + 1
            s = s
            continue 
        if locked[address(arg1)][stor7[address(arg1)][idx]].field_512:
            require s >= s
            mem[0] = arg1
            mem[32] = 7
            idx = idx + 1
            s = s
            continue 
        require s + locked[address(arg1)][stor7[address(arg1)][idx]].field_0 >= s
        mem[0] = arg1
        mem[32] = 7
        idx = idx + 1
        s = s + locked[address(arg1)][stor7[address(arg1)][idx]].field_0
        continue 
    return s
}

function increaseLockAmount(bytes32 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if locked[address(arg3)][arg1].field_512:
        revert with 0, 'No tokens locked'
    if locked[address(arg3)][arg1].field_0 <= 0:
        revert with 0, 'No tokens locked'
    require not uint8(stor3.field_160)
    require this.address
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(this.address)] + arg2 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg2
    emit Transfer(arg2, msg.sender, this.address);
    require locked[address(arg3)][arg1].field_0 + arg2 >= locked[address(arg3)][arg1].field_0
    locked[address(arg3)][arg1].field_0 += arg2
    emit Locked(locked[address(arg3)][arg1].field_0, locked[address(arg3)][arg1].field_256, arg3, arg1);
    return 1
}

function lock(bytes32 arg1, uint256 arg2, uint256 arg3, address arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    require block.timestamp + arg3 >= block.timestamp
    if arg2 > balanceOf[address(arg4)]:
        revert with 0, 'Not enough tokens'
    if not locked[address(arg4)][arg1].field_512:
        if locked[address(arg4)][arg1].field_0:
            revert with 0, 'Tokens already locked'
    if not arg2:
        revert with 0, 'Amount can not be 0'
    if not locked[address(arg4)][arg1].field_0:
        lockReason[address(arg4)]++
        lockReason[address(arg4)][lockReason[address(arg4)]] = arg1
    require balanceOf[address(this.address)] + arg2 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg2
    require arg2 <= balanceOf[address(arg4)]
    balanceOf[address(arg4)] -= arg2
    locked[address(arg4)][arg1].field_0 = arg2
    locked[address(arg4)][arg1].field_256 = block.timestamp + arg3
    locked[address(arg4)][arg1].field_512 = 0
    emit Locked(arg2, block.timestamp + arg3, arg4, arg1);
    return 1
}

function transferWithLock(address arg1, bytes32 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    require block.timestamp + arg4 >= block.timestamp
    if not locked[address(arg1)][arg2].field_512:
        if locked[address(arg1)][arg2].field_0:
            revert with 0, 'Tokens already locked'
    if not arg3:
        revert with 0, 'Amount can not be 0'
    if not locked[address(arg1)][arg2].field_0:
        lockReason[address(arg1)]++
        lockReason[address(arg1)][lockReason[address(arg1)]] = arg2
    require not uint8(stor3.field_160)
    require this.address
    require arg3 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg3
    require balanceOf[address(this.address)] + arg3 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg3
    emit Transfer(arg3, msg.sender, this.address);
    locked[address(arg1)][arg2].field_0 = arg3
    locked[address(arg1)][arg2].field_256 = block.timestamp + arg4
    locked[address(arg1)][arg2].field_512 = 0
    emit Locked(arg3, block.timestamp + arg4, arg1, arg2);
    return 1
}

function sub_14e6cb1d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    idx = 0
    s = 0
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        if not locked[address(arg1)][stor7[address(arg1)][idx]].field_512:
            mem[0] = arg1
            mem[32] = 7
            idx = idx + 1
            s = s
            continue 
        require idx < lockReason[address(arg1)]
        locked[address(arg1)][stor7[address(arg1)][idx]].field_0 = 0
        locked[address(arg1)][stor7[address(arg1)][idx]].field_256 = 0
        locked[address(arg1)][stor7[address(arg1)][idx]].field_512 = 0
        require idx < lockReason[address(arg1)]
        require idx < lockReason[address(arg1)]
        mem[96] = locked[address(arg1)][stor7[address(arg1)][idx]].field_0
        mem[128] = locked[address(arg1)][stor7[address(arg1)][idx]].field_256
        emit 0x6617c7e7: locked[address(arg1)][stor7[address(arg1)][idx]].field_0, locked[address(arg1)][stor7[address(arg1)][idx]].field_256, arg1
        mem[0] = arg1
        mem[32] = 7
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function unlock(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    idx = 0
    s = 0
    s = 0
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        if locked[address(arg1)][stor7[address(arg1)][idx]].field_256 > block.timestamp:
            mem[0] = arg1
            mem[32] = 7
            idx = idx + 1
            s = 0
            s = s
            continue 
        if locked[address(arg1)][stor7[address(arg1)][idx]].field_512:
            mem[0] = arg1
            mem[32] = 7
            idx = idx + 1
            s = 0
            s = s
            continue 
        if locked[address(arg1)][stor7[address(arg1)][idx]].field_0 <= 0:
            mem[0] = arg1
            mem[32] = 7
            idx = idx + 1
            s = locked[address(arg1)][stor7[address(arg1)][idx]].field_0
            s = s
            continue 
        require s + locked[address(arg1)][stor7[address(arg1)][idx]].field_0 >= s
        require idx < lockReason[address(arg1)]
        locked[address(arg1)][stor7[address(arg1)][idx]].field_512 = 1
        require idx < lockReason[address(arg1)]
        mem[96] = locked[address(arg1)][stor7[address(arg1)][idx]].field_0
        emit Unlocked(locked[address(arg1)][stor7[address(arg1)][idx]].field_0, arg1, lockReason[address(arg1)][idx]);
        mem[0] = arg1
        mem[32] = 7
        idx = idx + 1
        s = locked[address(arg1)][stor7[address(arg1)][idx]].field_0
        s = s + locked[address(arg1)][stor7[address(arg1)][idx]].field_0
        continue 
    if s > 0:
        require ext_code.size(this.address)
        call this.address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return s
}



}
