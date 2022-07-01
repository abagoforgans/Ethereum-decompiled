contract main {




// =====================  Runtime code  =====================


const getNowTime = block.timestamp


address owner;
uint8 stor1; offset 160
address newOwner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint256 allowance;
mapping of struct lockupBalance;

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
    return bool(stor1)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function lockupBalance(address arg1) {
    return lockupBalance[address(arg1)].field_768
}

function frozen(address arg1) {
    return bool(stor9[arg1])
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor1
    stor1 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor1
    stor1 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    return 0
}

function approve(address arg1, uint256 arg2) {
    require not stor1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function unfreezeAccount(address arg1) {
    require msg.sender == owner
    require stor9[address(arg1)]
    stor9[address(arg1)] = 0
    emit Unfreeze(arg1);
    return 1
}

function freezeAccount(address arg1) {
    require msg.sender == owner
    require not stor9[address(arg1)]
    stor9[address(arg1)] = 1
    emit Freeze(arg1);
    return 1
}

function mint(uint256 arg1) {
    require msg.sender == owner
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    require arg1 + balanceOf[stor0] >= balanceOf[stor0]
    balanceOf[stor0] += arg1
    emit Transfer(arg1, 0, owner);
    return 1
}

function showLockState(address arg1) {
    return bool(stor8[address(arg1)]), 
           lockupBalance[address(arg1)].field_768,
           lockupBalance[address(arg1)].field_0,
           lockupBalance[address(arg1)].field_256,
           lockupBalance[address(arg1)].field_512
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function distribute(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 <= balanceOf[stor0]
    require arg2 <= balanceOf[stor0]
    balanceOf[stor0] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, owner, arg1);
    return 1
}

function claimToken(address arg1, address arg2, uint256 arg3) {
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

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require ext_code.size(arg1) > 0
    require not stor1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function unlock(address arg1) {
    require msg.sender == owner
    require 1 == bool(stor8[address(arg1)])
    lockupBalance[address(arg1)].field_0 = 0
    lockupBalance[address(arg1)].field_256 = 0
    lockupBalance[address(arg1)].field_512 = 0
    lockupBalance[address(arg1)].field_768 = 0
    stor8[address(arg1)] = 0
    emit Unlock(lockupBalance[address(arg1)].field_768, arg1);
    require lockupBalance[address(arg1)].field_768 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += lockupBalance[address(arg1)].field_768
    return 1
}

function lock(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == owner
    require not stor8[address(arg1)]
    require arg3 > block.timestamp
    require arg4 > 0
    require arg2
    require arg5 * arg2 / arg2 == arg5
    require arg5 * arg2 / 100 > 0
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    if not arg2:
        lockupBalance[address(arg1)].field_0 = arg3
        lockupBalance[address(arg1)].field_256 = arg4
        lockupBalance[address(arg1)].field_512 = 0
    else:
        require arg5 * arg2 / arg2 == arg5
        lockupBalance[address(arg1)].field_0 = arg3
        lockupBalance[address(arg1)].field_256 = arg4
        lockupBalance[address(arg1)].field_512 = arg5 * arg2 / 100
    lockupBalance[address(arg1)].field_768 = arg2
    stor8[address(arg1)] = 1
    emit Lock(arg2, arg1);
    return 1
}

function distributeWithLockup(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == owner
    require arg1
    require arg2 <= balanceOf[stor0]
    require arg2 <= balanceOf[stor0]
    balanceOf[stor0] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, owner, arg1);
    require msg.sender == owner
    require not stor8[address(arg1)]
    require arg3 > block.timestamp
    require arg4 > 0
    require arg2
    require arg5 * arg2 / arg2 == arg5
    require arg5 * arg2 / 100 > 0
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    if not arg2:
        lockupBalance[address(arg1)].field_0 = arg3
        lockupBalance[address(arg1)].field_256 = arg4
        lockupBalance[address(arg1)].field_512 = 0
    else:
        require arg5 * arg2 / arg2 == arg5
        lockupBalance[address(arg1)].field_0 = arg3
        lockupBalance[address(arg1)].field_256 = arg4
        lockupBalance[address(arg1)].field_512 = arg5 * arg2 / 100
    lockupBalance[address(arg1)].field_768 = arg2
    stor8[address(arg1)] = 1
    emit Lock(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor1
    require not stor9[msg.sender]
    if stor8[msg.sender]:
        if block.timestamp >= lockupBalance[address(msg.sender)].field_0:
            require stor8[address(msg.sender)]
            s = 0
            while block.timestamp >= lockupBalance[address(msg.sender)].field_0:
                if lockupBalance[address(msg.sender)].field_768 > lockupBalance[address(msg.sender)].field_512:
                    require lockupBalance[address(msg.sender)].field_512 + s >= s
                    require lockupBalance[address(msg.sender)].field_512 <= lockupBalance[address(msg.sender)].field_768
                    lockupBalance[address(msg.sender)].field_768 -= lockupBalance[address(msg.sender)].field_512
                    require lockupBalance[address(msg.sender)].field_256 + lockupBalance[address(msg.sender)].field_0 >= lockupBalance[address(msg.sender)].field_0
                    lockupBalance[address(msg.sender)].field_0 += lockupBalance[address(msg.sender)].field_256
                    mem[0] = msg.sender
                    mem[32] = 11
                    s = lockupBalance[address(msg.sender)].field_512 + s
                    continue 
                require lockupBalance[address(msg.sender)].field_768 + s >= s
                lockupBalance[address(msg.sender)].field_0 = 0
                lockupBalance[address(msg.sender)].field_256 = 0
                lockupBalance[address(msg.sender)].field_512 = 0
                lockupBalance[address(msg.sender)].field_768 = 0
                stor8[address(msg.sender)] = 0
                emit Unlock((lockupBalance[address(msg.sender)].field_768 + s), msg.sender);
                require lockupBalance[address(msg.sender)].field_768 + s + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = lockupBalance[address(msg.sender)].field_768 + s + balanceOf[address(msg.sender)]
                require arg1
                require arg2 <= balanceOf[msg.sender]
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
                return 1
            emit Unlock(s, msg.sender);
            require s + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += s
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor1
    require not stor9[address(arg1)]
    if stor8[address(arg1)]:
        if block.timestamp >= lockupBalance[address(arg1)].field_0:
            require stor8[address(arg1)]
            s = 0
            while block.timestamp >= lockupBalance[address(arg1)].field_0:
                if lockupBalance[address(arg1)].field_768 > lockupBalance[address(arg1)].field_512:
                    require lockupBalance[address(arg1)].field_512 + s >= s
                    require lockupBalance[address(arg1)].field_512 <= lockupBalance[address(arg1)].field_768
                    lockupBalance[address(arg1)].field_768 -= lockupBalance[address(arg1)].field_512
                    require lockupBalance[address(arg1)].field_256 + lockupBalance[address(arg1)].field_0 >= lockupBalance[address(arg1)].field_0
                    lockupBalance[address(arg1)].field_0 += lockupBalance[address(arg1)].field_256
                    mem[0] = arg1
                    mem[32] = 11
                    s = lockupBalance[address(arg1)].field_512 + s
                    continue 
                require lockupBalance[address(arg1)].field_768 + s >= s
                lockupBalance[address(arg1)].field_0 = 0
                lockupBalance[address(arg1)].field_256 = 0
                lockupBalance[address(arg1)].field_512 = 0
                lockupBalance[address(arg1)].field_768 = 0
                stor8[address(arg1)] = 0
                emit Unlock((lockupBalance[address(arg1)].field_768 + s), arg1);
                require lockupBalance[address(arg1)].field_768 + s + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = lockupBalance[address(arg1)].field_768 + s + balanceOf[address(arg1)]
                require arg2
                require arg3 <= balanceOf[address(arg1)]
                require arg3 <= allowance[address(arg1)][msg.sender]
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                require arg3 <= allowance[address(arg1)][msg.sender]
                allowance[address(arg1)][msg.sender] -= arg3
                emit Transfer(arg3, arg1, arg2);
                return 1
            emit Unlock(s, arg1);
            require s + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += s
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
