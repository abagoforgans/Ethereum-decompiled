contract main {




// =====================  Runtime code  =====================


const name = 'Hive Pre'

const decimals = 18

const symbol = 'HPREE'

const INITIAL_SUPPLY = 24000000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
uint256 lock_period;
mapping of struct releaseTime;

function getReleaseTime(address arg1) {
    require arg1
    return releaseTime[address(arg1)].field_256
}

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(stor3)
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

function lock_period() {
    return lock_period
}

function destroy(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 132] = owner
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_14))
        call address(_14).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        s = _14
        idx = idx + 1
        continue 
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    emit Pause()
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

function getLockedBalance(address arg1) {
    if block.timestamp < releaseTime[address(arg1)].field_256:
        return releaseTime[address(arg1)].field_0
    else:
        return 0
}

function clearReleaseTime(address arg1) {
    require msg.sender == owner
    require arg1
    require releaseTime[address(arg1)].field_256 > 0
    releaseTime[address(arg1)].field_256 = 0
    emit LockTimeSetted(releaseTime[address(arg1)].field_256, 0, arg1);
    return 1
}

function setReleaseTime(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 >= block.timestamp
    releaseTime[address(arg1)].field_256 = arg2
    emit LockTimeSetted(releaseTime[address(arg1)].field_256, arg2, arg1);
    return 1
}

function getFreeBalance(address arg1) {
    if block.timestamp >= releaseTime[address(arg1)].field_256:
        return balanceOf[address(arg1)]
    require releaseTime[address(arg1)].field_0 <= balanceOf[address(arg1)]
    return (balanceOf[address(arg1)] - releaseTime[address(arg1)].field_0)
}

function clearLock(address arg1) {
    require msg.sender == owner
    require arg1
    require releaseTime[address(arg1)].field_256 > 0
    releaseTime[address(arg1)].field_0 = 0
    releaseTime[address(arg1)].field_256 = 0
    emit Locked(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                0,
                arg1,
    return 1
}

function decreaseLockBalance(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require arg2 <= releaseTime[address(arg1)].field_0
    require arg2 <= releaseTime[address(arg1)].field_0
    releaseTime[address(arg1)].field_0 -= arg2
    emit Locked(arg2, releaseTime[address(arg1)].field_0 - arg2, releaseTime[address(arg1)].field_256, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if block.timestamp >= releaseTime[address(msg.sender)].field_256:
        require balanceOf[address(msg.sender)] >= arg2
    else:
        require releaseTime[address(msg.sender)].field_0 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - releaseTime[address(msg.sender)].field_0 >= arg2
    require not stor3
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseLockBalance(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[address(arg1)]
    if not releaseTime[address(arg1)].field_256:
        releaseTime[address(arg1)].field_256 = lock_period + block.timestamp
    require arg2 + releaseTime[address(arg1)].field_0 >= releaseTime[address(arg1)].field_0
    releaseTime[address(arg1)].field_0 += arg2
    emit Locked(arg2, arg2 + releaseTime[address(arg1)].field_0, releaseTime[address(arg1)].field_256, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp >= releaseTime[address(msg.sender)].field_256:
        require balanceOf[address(msg.sender)] >= arg2
    else:
        require releaseTime[address(msg.sender)].field_0 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - releaseTime[address(msg.sender)].field_0 >= arg2
    require not stor3
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    if block.timestamp >= releaseTime[address(msg.sender)].field_256:
        require balanceOf[address(msg.sender)] >= arg2 + allowance[msg.sender][address(arg1)]
    else:
        require releaseTime[address(msg.sender)].field_0 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - releaseTime[address(msg.sender)].field_0 >= arg2 + allowance[msg.sender][address(arg1)]
    require not stor3
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp >= releaseTime[address(arg1)].field_256:
        require balanceOf[address(arg1)] >= arg3
    else:
        require releaseTime[address(arg1)].field_0 <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] - releaseTime[address(arg1)].field_0 >= arg3
    require not stor3
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 < allowance[msg.sender][address(arg1)]:
        require arg2 <= allowance[msg.sender][address(arg1)]
        if block.timestamp >= releaseTime[address(msg.sender)].field_256:
            require balanceOf[address(msg.sender)] >= allowance[msg.sender][address(arg1)] - arg2
        else:
            require releaseTime[address(msg.sender)].field_0 <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] - releaseTime[address(msg.sender)].field_0 >= allowance[msg.sender][address(arg1)] - arg2
    require not stor3
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}



}
