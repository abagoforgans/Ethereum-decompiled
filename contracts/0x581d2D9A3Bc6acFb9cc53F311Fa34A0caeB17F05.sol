contract main {




// =====================  Runtime code  =====================


const name = 'SCAVO GPU Token'

const decimals = 18

const version = '1.3'

const symbol = 'SCAVOG'

const INITIAL_SUPPLY = 3000000000 * 10^18


array of uint256 lockReason;
mapping of struct locked;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor5; offset 160
uint8 stor5; offset 168
address owner;

function mintingFinished() {
    return bool(uint8(stor5.field_160))
}

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(uint8(stor5.field_168))
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

function unpause() {
    require msg.sender == owner
    require uint8(stor5.field_168)
    uint8(stor5.field_168) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor5.field_168)
    uint8(stor5.field_168) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function tokensLocked(address arg1, bytes32 arg2) {
    if locked[address(arg1)][arg2].field_512:
        return 0
    return locked[address(arg1)][arg2].field_0
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor5.field_160)
    uint8(stor5.field_160) = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor5.field_168)
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function tokensLockedAtTime(address arg1, bytes32 arg2, uint256 arg3) {
    if arg3 >= locked[address(arg1)][arg2].field_256:
        return 0
    return locked[address(arg1)][arg2].field_0
}

function tokensUnlockable(address arg1, bytes32 arg2) {
    if block.timestamp < locked[address(arg1)][arg2].field_256:
        return 0
    if locked[address(arg1)][arg2].field_512:
        return 0
    return locked[address(arg1)][arg2].field_0
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit 0x26ddf252: arg1, msg.sender, 0
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor5.field_168)
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor5.field_160)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit 0x26ddf252: arg2, 0, arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor5.field_168)
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0x26ddf252: arg2, msg.sender, arg1
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor5.field_168)
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][msg.sender]
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit 0x26ddf252: arg2, arg1, 0
}

function extendLock(bytes32 arg1, uint256 arg2) {
    if locked[address(msg.sender)][arg1].field_512:
        revert with 0, 'No tokens locked'
    if 0 >= locked[address(msg.sender)][arg1].field_0:
        revert with 0, 'No tokens locked'
    require arg2 + locked[msg.sender][arg1].field_256 >= locked[msg.sender][arg1].field_256
    locked[msg.sender][arg1].field_256 += arg2
    emit Lock(locked[msg.sender][arg1].field_0, arg2 + locked[msg.sender][arg1].field_256, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor5.field_168)
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit 0x26ddf252: arg3, arg1, arg2
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
        require locked[address(arg1)][stor0[address(arg1)][idx]].field_0 + s >= s
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        s = locked[address(arg1)][stor0[address(arg1)][idx]].field_0 + s
        continue 
    return s
}

function getUnlockableTokens(address arg1) {
    idx = 0
    s = 0
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        if block.timestamp < locked[address(arg1)][stor0[address(arg1)][idx]].field_256:
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
        require locked[address(arg1)][stor0[address(arg1)][idx]].field_0 + s >= s
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        s = locked[address(arg1)][stor0[address(arg1)][idx]].field_0 + s
        continue 
    return s
}

function increaseLockAmount(bytes32 arg1, uint256 arg2) {
    if locked[address(msg.sender)][arg1].field_512:
        revert with 0, 'No tokens locked'
    if 0 >= locked[address(msg.sender)][arg1].field_0:
        revert with 0, 'No tokens locked'
    require not uint8(stor5.field_168)
    require arg2 <= balanceOf[msg.sender]
    require this.address
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[address(this.address)] = arg2 + balanceOf[this.address]
    emit 0x26ddf252: arg2, msg.sender, this.address
    require arg2 + locked[msg.sender][arg1].field_0 >= locked[msg.sender][arg1].field_0
    locked[msg.sender][arg1].field_0 += arg2
    emit Lock(arg2 + locked[msg.sender][arg1].field_0, locked[msg.sender][arg1].field_256, msg.sender, arg1);
    return 1
}

function lock(bytes32 arg1, uint256 arg2, uint256 arg3) {
    require arg3 + block.timestamp >= block.timestamp
    if not locked[address(msg.sender)][arg1].field_512:
        if locked[address(msg.sender)][arg1].field_0:
            revert with 0, 'Tokens already locked'
    if not arg2:
        revert with 0, 'Amount can not be 0'
    if not locked[msg.sender][arg1].field_0:
        lockReason[msg.sender]++
        lockReason[msg.sender][lockReason[msg.sender]] = arg1
    require not uint8(stor5.field_168)
    require arg2 <= balanceOf[msg.sender]
    require this.address
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[address(this.address)] = arg2 + balanceOf[this.address]
    emit 0x26ddf252: arg2, msg.sender, this.address
    locked[msg.sender][arg1].field_0 = arg2
    locked[msg.sender][arg1].field_256 = arg3 + block.timestamp
    locked[msg.sender][arg1].field_512 = 0
    emit Lock(arg2, arg3 + block.timestamp, msg.sender, arg1);
    return 1
}

function transferWithLock(address arg1, bytes32 arg2, uint256 arg3, uint256 arg4) {
    require arg4 + block.timestamp >= block.timestamp
    if not locked[address(arg1)][arg2].field_512:
        if locked[address(arg1)][arg2].field_0:
            revert with 0, 'Tokens already locked'
    if not arg3:
        revert with 0, 'Amount can not be 0'
    if not locked[address(arg1)][arg2].field_0:
        lockReason[address(arg1)]++
        lockReason[address(arg1)][lockReason[address(arg1)]] = arg2
    require not uint8(stor5.field_168)
    require arg3 <= balanceOf[msg.sender]
    require this.address
    require arg3 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg3
    require arg3 + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[address(this.address)] = arg3 + balanceOf[this.address]
    emit 0x26ddf252: arg3, msg.sender, this.address
    locked[address(arg1)][arg2].field_0 = arg3
    locked[address(arg1)][arg2].field_256 = arg4 + block.timestamp
    locked[address(arg1)][arg2].field_512 = 0
    emit Lock(arg3, arg4 + block.timestamp, arg1, arg2);
    return 1
}

function unlock(address arg1) {
    idx = 0
    s = 0
    s = 0
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        if block.timestamp < locked[address(arg1)][stor0[address(arg1)][idx]].field_256:
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
        require locked[address(arg1)][stor0[address(arg1)][idx]].field_0 + s >= s
        require idx < lockReason[address(arg1)]
        locked[address(arg1)][stor0[address(arg1)][idx]].field_512 = 1
        require idx < lockReason[address(arg1)]
        mem[96] = locked[address(arg1)][stor0[address(arg1)][idx]].field_0
        emit Unlock(locked[address(arg1)][stor0[address(arg1)][idx]].field_0, arg1, lockReason[address(arg1)][idx]);
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        s = locked[address(arg1)][stor0[address(arg1)][idx]].field_0
        s = locked[address(arg1)][stor0[address(arg1)][idx]].field_0 + s
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
