contract main {




// =====================  Runtime code  =====================


#
#  - lock(bytes32 arg1, uint256 arg2, uint256 arg3)
#
const DECIMALS = 18

const INITIAL_SUPPLY = 20000000000 * 10^18


array of uint256 lockReason;
mapping of struct locked;
mapping of uint256 stor3;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 sub_23cd0017; offset 8
address masterAddress; offset 16

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_19934019(?) {
    return sub_23cd0017
}

function sub_23cd0017(?) {
    return sub_23cd0017
}

function decimals() {
    return decimals
}

function getMaster() {
    return masterAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function lockReason(address arg1, uint256 arg2) {
    require arg2 < lockReason[arg1]
    return lockReason[arg1][arg2]
}

function symbol() {
    return symbol[0 len symbol.length]
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

function sub_b735ab77(?) {
    if masterAddress != msg.sender:
        return 0
    sub_23cd0017 = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit 0xdd8c5be1: arg2, msg.sender, arg1
    return 1
}

function tokensLocked(address arg1, bytes32 arg2) {
    if locked[address(arg1)][arg2].field_512:
        return 0
    return locked[address(arg1)][arg2].field_0
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

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit 0xdd8c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg2 <= stor3[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    stor3[address(msg.sender)][address(arg1)] = stor3[msg.sender][address(arg1)] - arg2
    emit 0xdd8c5be1: (stor3[msg.sender][address(arg1)] - arg2), msg.sender, arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg2 + stor3[msg.sender][address(arg1)] >= stor3[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    stor3[address(msg.sender)][address(arg1)] = arg2 + stor3[msg.sender][address(arg1)]
    emit 0xdd8c5be1: (arg2 + stor3[msg.sender][address(arg1)]), msg.sender, arg1
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit 0xdd8c5be1: allowance[msg.sender][address(arg1)], msg.sender, arg1
    return 1
}

function extendLock(bytes32 arg1, uint256 arg2) {
    if locked[address(msg.sender)][arg1].field_512:
        revert with 0, 'No tokens locked'
    if 0 >= locked[address(msg.sender)][arg1].field_0:
        revert with 0, 'No tokens locked'
    require arg2 + locked[msg.sender][arg1].field_256 >= locked[msg.sender][arg1].field_256
    locked[msg.sender][arg1].field_256 += arg2
    emit Locked(locked[msg.sender][arg1].field_0, arg2 + locked[msg.sender][arg1].field_256, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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

function increaseLockAmount(bytes32 arg1, uint256 arg2) {
    if locked[address(msg.sender)][arg1].field_512:
        revert with 0, 'No tokens locked'
    if 0 >= locked[address(msg.sender)][arg1].field_0:
        revert with 0, 'No tokens locked'
    require arg2 <= balanceOf[msg.sender]
    require this.address
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[address(this.address)] = arg2 + balanceOf[this.address]
    emit Transfer(arg2, msg.sender, this.address);
    require arg2 + locked[msg.sender][arg1].field_0 >= locked[msg.sender][arg1].field_0
    locked[msg.sender][arg1].field_0 += arg2
    emit Locked(arg2 + locked[msg.sender][arg1].field_0, locked[msg.sender][arg1].field_256, msg.sender, arg1);
    return 1
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
    require arg3 <= balanceOf[msg.sender]
    require this.address
    require arg3 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg3
    require arg3 + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[address(this.address)] = arg3 + balanceOf[this.address]
    emit Transfer(arg3, msg.sender, this.address);
    locked[address(arg1)][arg2].field_0 = arg3
    locked[address(arg1)][arg2].field_256 = arg4 + block.timestamp
    locked[address(arg1)][arg2].field_512 = 0
    emit Locked(arg3, arg4 + block.timestamp, arg1, arg2);
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
        emit Unlocked(locked[address(arg1)][stor0[address(arg1)][idx]].field_0, arg1, lockReason[address(arg1)][idx]);
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
