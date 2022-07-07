contract main {




// =====================  Runtime code  =====================


const name = 'S-Token'

const decimals = 18

const symbol = 'STO'

const INITIAL_SUPPLY = 500000000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
array of uint256 lockReason;
mapping of struct locked;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function lockReason(address arg1, uint256 arg2) {
    require arg2 < lockReason[arg1]
    return lockReason[arg1][arg2]
}

function owner() {
    return owner
}

function locked(address arg1, bytes32 arg2) {
    return locked[arg1][arg2].field_0, locked[arg1][arg2].field_256, bool(locked[arg1][arg2].field_512)
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

function tokensLocked(address arg1, bytes32 arg2) {
    if locked[address(arg1)][arg2].field_512:
        return 0
    return locked[address(arg1)][arg2].field_0
}

function tokensLockedAtTime(address arg1, bytes32 arg2, uint256 arg3) {
    if locked[address(arg1)][arg2].field_256 <= arg3:
        return 0
    return locked[address(arg1)][arg2].field_0
}

function tokensUnlockable(address arg1, bytes32 arg2) {
    if locked[address(arg1)][arg2].field_256 > block.timestamp:
        return 0
    if locked[address(arg1)][arg2].field_512:
        return 0
    return locked[address(arg1)][arg2].field_0
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    if arg2 <= 0:
        revert with 0, 'Invalid token values'
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Mint(address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    require msg.sender == owner
    if arg2 <= 0:
        revert with 0, 'Invalid token values'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'Not enough tokens'
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(address(arg1), arg2);
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function extendLock(bytes32 arg1, uint256 arg2) {
    if locked[address(msg.sender)][arg1].field_512:
        revert with 0, 'No tokens locked'
    if locked[address(msg.sender)][arg1].field_0 <= 0:
        revert with 0, 'No tokens locked'
    require locked[address(msg.sender)][arg1].field_256 + arg2 >= locked[address(msg.sender)][arg1].field_256
    locked[address(msg.sender)][arg1].field_256 += arg2
    emit Locked(locked[address(msg.sender)][arg1].field_0, locked[address(msg.sender)][arg1].field_256, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function totalBalanceOf(address arg1) {
    idx = 0
    s = balanceOf[address(arg1)]
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        if locked[address(arg1)][stor4[address(arg1)][idx]].field_512:
            require s >= s
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = s
            continue 
        require s + locked[address(arg1)][stor4[address(arg1)][idx]].field_0 >= s
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + locked[address(arg1)][stor4[address(arg1)][idx]].field_0
        continue 
    return s
}

function getUnlockableTokens(address arg1) {
    idx = 0
    s = 0
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        if locked[address(arg1)][stor4[address(arg1)][idx]].field_256 > block.timestamp:
            require s >= s
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = s
            continue 
        if locked[address(arg1)][stor4[address(arg1)][idx]].field_512:
            require s >= s
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = s
            continue 
        require s + locked[address(arg1)][stor4[address(arg1)][idx]].field_0 >= s
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + locked[address(arg1)][stor4[address(arg1)][idx]].field_0
        continue 
    return s
}

function increaseLockAmount(bytes32 arg1, uint256 arg2) {
    if locked[address(msg.sender)][arg1].field_512:
        revert with 0, 'No tokens locked'
    if locked[address(msg.sender)][arg1].field_0 <= 0:
        revert with 0, 'No tokens locked'
    require arg2 <= balanceOf[address(msg.sender)]
    require this.address
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(this.address)] + arg2 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg2
    emit Transfer(arg2, msg.sender, this.address);
    require locked[address(msg.sender)][arg1].field_0 + arg2 >= locked[address(msg.sender)][arg1].field_0
    locked[address(msg.sender)][arg1].field_0 += arg2
    emit Locked(locked[address(msg.sender)][arg1].field_0, locked[address(msg.sender)][arg1].field_256, msg.sender, arg1);
    return 1
}

function transferWithLock(address arg1, bytes32 arg2, uint256 arg3, uint256 arg4) {
    require block.timestamp + arg4 >= block.timestamp
    if not locked[address(arg1)][arg2].field_512:
        if locked[address(arg1)][arg2].field_0:
            revert with 0, 'Tokens already locked'
    if not arg3:
        revert with 0, 'Amount can not be 0'
    if not locked[address(arg1)][arg2].field_0:
        lockReason[address(arg1)]++
        lockReason[address(arg1)][lockReason[address(arg1)]] = arg2
    require arg3 <= balanceOf[address(msg.sender)]
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

function lock(bytes32 arg1, uint256 arg2, uint256 arg3, address arg4) {
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
    emit Transfer(arg2, arg4, this.address);
    emit Locked(arg2, block.timestamp + arg3, arg4, arg1);
    return 1
}

function unlock(address arg1) {
    idx = 0
    s = 0
    s = 0
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        if locked[address(arg1)][stor4[address(arg1)][idx]].field_256 > block.timestamp:
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = 0
            s = s
            continue 
        if locked[address(arg1)][stor4[address(arg1)][idx]].field_512:
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = 0
            s = s
            continue 
        if locked[address(arg1)][stor4[address(arg1)][idx]].field_0 <= 0:
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = locked[address(arg1)][stor4[address(arg1)][idx]].field_0
            s = s
            continue 
        require s + locked[address(arg1)][stor4[address(arg1)][idx]].field_0 >= s
        require idx < lockReason[address(arg1)]
        locked[address(arg1)][stor4[address(arg1)][idx]].field_512 = 1
        require idx < lockReason[address(arg1)]
        mem[96] = locked[address(arg1)][stor4[address(arg1)][idx]].field_0
        emit Unlocked(locked[address(arg1)][stor4[address(arg1)][idx]].field_0, arg1, lockReason[address(arg1)][idx]);
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = locked[address(arg1)][stor4[address(arg1)][idx]].field_0
        s = s + locked[address(arg1)][stor4[address(arg1)][idx]].field_0
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
