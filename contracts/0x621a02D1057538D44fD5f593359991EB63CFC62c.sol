contract main {




// =====================  Runtime code  =====================


const name = 'Darkinex'

const decimals = 8

const symbol = 'DARK'


array of uint256 lockReason;
mapping of struct locked;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor5; offset 160
uint128 stor5; offset 160
address owner;

function mintingFinished() {
    return bool(uint8(stor5.field_160))
}

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

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor5.field_160)
    Mask(96, 0, stor5.field_160) = 1
    emit MintFinished()
    return 1
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

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
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

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor5.field_160)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
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

function totalBalanceOf(address arg1) {
    idx = 0
    s = balanceOf[address(arg1)]
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        if locked[address(arg1)][stor0[address(arg1)][idx]].field_512:
            require s >= s
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = s
            continue 
        require s + locked[address(arg1)][stor0[address(arg1)][idx]].field_0 >= s
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        s = s + locked[address(arg1)][stor0[address(arg1)][idx]].field_0
        continue 
    return s
}

function Airdrop(address arg1, address[] arg2, uint256 arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 164] = arg3
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + 132], arg3
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function getUnlockableTokens(address arg1) {
    idx = 0
    s = 0
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        if locked[address(arg1)][stor0[address(arg1)][idx]].field_256 > block.timestamp:
            require s >= s
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = s
            continue 
        if locked[address(arg1)][stor0[address(arg1)][idx]].field_512:
            require s >= s
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = s
            continue 
        require s + locked[address(arg1)][stor0[address(arg1)][idx]].field_0 >= s
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        s = s + locked[address(arg1)][stor0[address(arg1)][idx]].field_0
        continue 
    return s
}

function increaseLockAmount(bytes32 arg1, uint256 arg2) {
    if locked[address(msg.sender)][arg1].field_512:
        revert with 0, 'No tokens locked'
    if locked[address(msg.sender)][arg1].field_0 <= 0:
        revert with 0, 'No tokens locked'
    require this.address
    require arg2 <= balanceOf[address(msg.sender)]
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
    require this.address
    require arg3 <= balanceOf[address(msg.sender)]
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

function lock(bytes32 arg1, uint256 arg2, uint256 arg3) {
    require block.timestamp + arg3 >= block.timestamp
    if not locked[address(msg.sender)][arg1].field_512:
        if locked[address(msg.sender)][arg1].field_0:
            revert with 0, 'Tokens already locked'
    if not arg2:
        revert with 0, 'Amount can not be 0'
    if not locked[address(msg.sender)][arg1].field_0:
        lockReason[address(msg.sender)]++
        lockReason[address(msg.sender)][lockReason[address(msg.sender)]] = arg1
    require this.address
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(this.address)] + arg2 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg2
    emit Transfer(arg2, msg.sender, this.address);
    locked[address(msg.sender)][arg1].field_0 = arg2
    locked[address(msg.sender)][arg1].field_256 = block.timestamp + arg3
    locked[address(msg.sender)][arg1].field_512 = 0
    emit Locked(arg2, block.timestamp + arg3, msg.sender, arg1);
    return 1
}

function unlock(address arg1) {
    idx = 0
    s = 0
    s = 0
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        if locked[address(arg1)][stor0[address(arg1)][idx]].field_256 > block.timestamp:
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = 0
            s = s
            continue 
        if locked[address(arg1)][stor0[address(arg1)][idx]].field_512:
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = 0
            s = s
            continue 
        if locked[address(arg1)][stor0[address(arg1)][idx]].field_0 <= 0:
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = locked[address(arg1)][stor0[address(arg1)][idx]].field_0
            s = s
            continue 
        require s + locked[address(arg1)][stor0[address(arg1)][idx]].field_0 >= s
        require idx < lockReason[address(arg1)]
        locked[address(arg1)][stor0[address(arg1)][idx]].field_512 = 1
        require idx < lockReason[address(arg1)]
        mem[96] = locked[address(arg1)][stor0[address(arg1)][idx]].field_0
        emit Unlocked(locked[address(arg1)][stor0[address(arg1)][idx]].field_0, arg1, lockReason[address(arg1)][idx]);
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        s = locked[address(arg1)][stor0[address(arg1)][idx]].field_0
        s = s + locked[address(arg1)][stor0[address(arg1)][idx]].field_0
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
