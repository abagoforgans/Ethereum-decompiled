contract main {




// =====================  Runtime code  =====================


const decimals = 18

const getNowTime = block.timestamp


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address newOwner;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint256 stor6;
mapping of uint256 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint256 allowance;
array of struct stor11;
array of uint256 stor12;
address stor48;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozen(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function unpause() {
    require msg.sender == owner
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
    emit Pause()
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require stor48 != arg1
    stor48 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
    return 0
}

function unfreezeAccount(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require stor9[address(arg1)]
    stor9[address(arg1)] = 0
    emit Unfreeze(arg1);
    return 1
}

function freezeAccount(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not stor9[address(arg1)]
    stor9[address(arg1)] = 1
    emit Freeze(arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor1.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require stor48
    delegate stor48 with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 <= stor7[address(msg.sender)]
    require arg1 <= stor7[address(msg.sender)]
    stor7[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
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

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require totalSupply + arg2 >= totalSupply
    require stor6 >= totalSupply + arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require stor7[address(arg1)] + arg2 >= stor7[address(arg1)]
    stor7[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function distribute(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require arg2 <= stor7[address(msg.sender)]
    require arg2 <= stor7[address(msg.sender)]
    stor7[address(msg.sender)] -= arg2
    require stor7[address(arg1)] + arg2 >= stor7[address(arg1)]
    stor7[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function showLockState(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor8[address(arg1)]:
        return bool(stor8[address(arg1)]), stor11[address(arg1)].field_0, 0, 0, 0
    require arg2 < stor11[address(arg1)].field_0
    require arg2 < stor11[address(arg1)].field_0
    require arg2 < stor11[address(arg1)].field_0
    return bool(stor8[address(arg1)]), 
           stor11[address(arg1)].field_0,
           stor11[address(arg1)][arg2].field_0,
           stor11[address(arg1)][arg2].field_256,
           stor11[address(arg1)][arg2].field_512
}

function lock(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    require stor7[address(arg1)] >= arg3
    require arg3 <= stor7[address(arg1)]
    stor7[address(arg1)] -= arg3
    stor11[address(arg1)].field_0++
    stor11[address(arg1)][stor11[address(arg1)].field_0].field_0 = arg2
    stor11[address(arg1)][stor11[address(arg1)].field_0].field_256 = arg3
    stor11[address(arg1)][stor11[address(arg1)].field_0].field_512 = arg4
    stor8[address(arg1)] = 1
    emit Lock(arg3, arg1);
    return 1
}

function currentBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not stor8[address(arg1)]:
        return stor7[address(arg1)]
    idx = 0
    s = 0
    while idx < stor11[address(arg1)].field_0:
        require idx < stor11[address(arg1)].field_0
        if stor11[address(arg1)][idx].field_0 > block.timestamp:
            mem[0] = arg1
            mem[32] = 11
            idx = idx + 1
            s = s
            continue 
        require idx < stor11[address(arg1)].field_0
        require s + stor11[address(arg1)][idx].field_256 >= s
        mem[0] = arg1
        mem[32] = 11
        idx = idx + 1
        s = s + stor11[address(arg1)][idx].field_256
        continue 
    return (stor7[address(arg1)] + s)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor1.field_160)
    require not stor9[address(msg.sender)]
    if not stor8[address(msg.sender)]:
        require arg1
        require arg2 <= stor7[address(msg.sender)]
        require arg2 <= stor7[address(msg.sender)]
        stor7[address(msg.sender)] -= arg2
        require stor7[address(arg1)] + arg2 >= stor7[address(arg1)]
        stor7[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    if stor8[address(msg.sender)]:
        # nil
    else:
        require arg1
        require arg2 <= stor7[address(msg.sender)]
        require arg2 <= stor7[address(msg.sender)]
        stor7[address(msg.sender)] -= arg2
        require stor7[address(arg1)] + arg2 >= stor7[address(arg1)]
        stor7[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not uint8(stor1.field_160)
    require not stor9[address(arg1)]
    if not stor8[address(arg1)]:
        require arg2
        require arg3 <= stor7[address(arg1)]
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        require arg3 <= stor7[address(arg1)]
        stor7[address(arg1)] -= arg3
        require stor7[address(arg2)] + arg3 >= stor7[address(arg2)]
        stor7[address(arg2)] += arg3
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer(arg3, arg1, arg2);
        return 1
    if stor8[address(arg1)]:
        # nil
    else:
        require arg2
        require arg3 <= stor7[address(arg1)]
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        require arg3 <= stor7[address(arg1)]
        stor7[address(arg1)] -= arg3
        require stor7[address(arg2)] + arg3 >= stor7[address(arg2)]
        stor7[address(arg2)] += arg3
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer(arg3, arg1, arg2);
        return 1
}

function unlock(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require stor8[address(arg1)]
    require arg2 < stor11[address(arg1)].field_0
    require arg2 < stor11[address(arg1)].field_0
    require arg2 < stor11[address(arg1)].field_0
    stor11[address(arg1)][arg2].field_0 = 0
    stor11[address(arg1)][arg2].field_256 = 0
    stor11[address(arg1)][arg2].field_512 = 0
    require 1 <= stor11[address(arg1)].field_0
    require stor11[address(arg1)].field_0 - 1 < stor11[address(arg1)].field_0
    require arg2 < stor11[address(arg1)].field_0
    stor11[address(arg1)][arg2].field_0 = stor11[address(arg1)][stor11[address(arg1)].field_0].field_0
    stor11[address(arg1)][arg2].field_256 = stor11[address(arg1)][stor11[address(arg1)].field_0].field_0
    stor11[address(arg1)][arg2].field_512 = stor11[address(arg1)][stor11[address(arg1)].field_0].field_0
    stor11[address(arg1)].field_0--
    if stor11[address(arg1)].field_0 > stor11[address(arg1)].field_0 - 1:
        idx = (3 * stor11[address(arg1)].field_0) - 3
        while 3 * stor11[address(arg1)].field_0 > idx:
            stor11[address(arg1)][idx].field_0 = 0
            stor11[address(arg1)][idx].field_256 = 0
            stor11[address(arg1)][idx].field_512 = 0
            idx = idx + 3
            continue 
    if not stor11[address(arg1)].field_0:
        stor8[address(arg1)] = 0
    emit Unlock(stor11[address(arg1)][arg2].field_256, arg1);
    require stor7[address(arg1)] + stor11[address(arg1)][arg2].field_256 >= stor7[address(arg1)]
    stor7[address(arg1)] += stor11[address(arg1)][arg2].field_256
    return 0
}

function multiTransfer(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require not uint8(stor1.field_160)
    require not stor9[address(msg.sender)]
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _77 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require not uint8(stor1.field_160)
        require not stor9[address(msg.sender)]
        if not stor8[address(msg.sender)]:
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= stor7[address(msg.sender)]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= stor7[address(msg.sender)]
            stor7[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require stor7[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= stor7[address(mem[(32 * idx) + 128])]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 7
            stor7[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_77));
            idx = idx + 1
            continue 
        if stor8[address(msg.sender)]:
            # nil
        else:
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= stor7[address(msg.sender)]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= stor7[address(msg.sender)]
            stor7[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require stor7[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= stor7[address(mem[(32 * idx) + 128])]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 7
            stor7[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_77));
            idx = idx + 1
            continue 
    return 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not stor8[address(arg1)]:
        return stor7[address(arg1)]
    idx = 0
    s = 0
    while idx < stor11[address(arg1)].field_0:
        require idx < stor11[address(arg1)].field_0
        require s + stor11[address(arg1)][idx].field_256 >= s
        mem[0] = arg1
        mem[32] = 11
        idx = idx + 1
        s = s + stor11[address(arg1)][idx].field_256
        continue 
    return (stor7[address(arg1)] + (s * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0 * stor11[address(arg1)].field_0))
}

function distributeWithLockup(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require msg.sender == owner
    require arg1
    require arg3 <= stor7[address(msg.sender)]
    require arg3 <= stor7[address(msg.sender)]
    stor7[address(msg.sender)] -= arg3
    require stor7[address(arg1)] + arg3 >= stor7[address(arg1)]
    stor7[address(arg1)] += arg3
    emit Transfer(arg3, msg.sender, arg1);
    if arg4:
        require arg4
        idx = 0
        while idx < arg4:
            require arg2 + idx < 36
            require msg.sender == owner
            if idx == arg4 - 1:
                require stor7[address(arg1)] >= (arg3 / arg4) + (arg3 % arg4)
                require (arg3 / arg4) + (arg3 % arg4) <= stor7[address(arg1)]
                stor7[address(arg1)] = stor7[address(arg1)] - (arg3 / arg4) - (arg3 % arg4)
                mem[0] = arg1
                mem[32] = 11
                _56 = mem[64]
                mem[64] = mem[64] + 96
                mem[_56] = stor[arg2 + idx + 12]
                mem[_56 + 32] = (arg3 / arg4) + (arg3 % arg4)
                mem[_56 + 64] = arg4
                stor11[address(arg1)].field_0++
                stor11[address(arg1)][stor11[address(arg1)].field_0].field_0 = stor[arg2 + idx + 12]
                stor11[address(arg1)][stor11[address(arg1)].field_0].field_256 = (arg3 / arg4) + (arg3 % arg4)
                stor11[address(arg1)][stor11[address(arg1)].field_0].field_512 = arg4
                mem[0] = arg1
                mem[32] = 8
                stor8[address(arg1)] = 1
                mem[mem[64]] = (arg3 / arg4) + (arg3 % arg4)
                emit Lock(((arg3 / arg4) + (arg3 % arg4)), arg1);
            else:
                require stor7[address(arg1)] >= arg3 / arg4
                require arg3 / arg4 <= stor7[address(arg1)]
                stor7[address(arg1)] -= arg3 / arg4
                mem[0] = arg1
                mem[32] = 11
                _66 = mem[64]
                mem[64] = mem[64] + 96
                mem[_66] = stor[arg2 + idx + 12]
                mem[_66 + 32] = arg3 / arg4
                mem[_66 + 64] = arg4
                stor11[address(arg1)].field_0++
                stor11[address(arg1)][stor11[address(arg1)].field_0].field_0 = stor[arg2 + idx + 12]
                stor11[address(arg1)][stor11[address(arg1)].field_0].field_256 = arg3 / arg4
                stor11[address(arg1)][stor11[address(arg1)].field_0].field_512 = arg4
                mem[0] = arg1
                mem[32] = 8
                stor8[address(arg1)] = 1
                mem[mem[64]] = arg3 / arg4
                emit Lock((arg3 / arg4), arg1);
            idx = idx + 1
            continue 
    else:
        require arg2 < 36
        require msg.sender == owner
        require stor7[address(arg1)] >= arg3
        require arg3 <= stor7[address(arg1)]
        stor7[address(arg1)] -= arg3
        stor11[address(arg1)].field_0++
        stor11[address(arg1)][stor11[address(arg1)].field_0].field_0 = stor12[arg2]
        stor11[address(arg1)][stor11[address(arg1)].field_0].field_256 = arg3
        stor11[address(arg1)][stor11[address(arg1)].field_0].field_512 = arg4
        stor8[address(arg1)] = 1
        emit Lock(arg3, arg1);
    return 1
}

function sub_a23e130d(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0
    require msg.sender == owner
    require arg1.length == arg3.length
    require arg3.length == arg4.length
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _71 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        require msg.sender == owner
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= stor7[address(msg.sender)]
        require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= stor7[address(msg.sender)]
        stor7[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require stor7[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= stor7[address(mem[(32 * idx) + 128])]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        emit Transfer(mem[mem[64]], msg.sender, address(_71));
        require idx < mem[96]
        _82 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _84 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _86 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _88 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]:
            require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
            s = 0
            while s < _88:
                require _84 + s < 36
                require msg.sender == owner
                if s == _88 - 1:
                    require stor7[address(_82)] >= (_86 / _88) + (_86 % _88)
                    require (_86 / _88) + (_86 % _88) <= stor7[address(_82)]
                    stor7[address(_82)] = stor7[address(_82)] - (_86 / _88) - (_86 % _88)
                    mem[0] = address(_82)
                    mem[32] = 11
                    _131 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_131] = stor[_84 + s + 12]
                    mem[_131 + 32] = (_86 / _88) + (_86 % _88)
                    mem[_131 + 64] = _88
                    stor11[address(_82)].field_0++
                    stor11[address(_82)][stor11[address(_82)].field_0].field_0 = stor[_84 + s + 12]
                    stor11[address(_82)][stor11[address(_82)].field_0].field_256 = (_86 / _88) + (_86 % _88)
                    stor11[address(_82)][stor11[address(_82)].field_0].field_512 = _88
                    mem[0] = address(_82)
                    mem[32] = 8
                    stor8[address(_82)] = 1
                    mem[mem[64]] = (_86 / _88) + (_86 % _88)
                    emit Lock(((_86 / _88) + (_86 % _88)), address(_82));
                else:
                    require stor7[address(_82)] >= _86 / _88
                    require _86 / _88 <= stor7[address(_82)]
                    stor7[address(_82)] -= _86 / _88
                    mem[0] = address(_82)
                    mem[32] = 11
                    _141 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_141] = stor[_84 + s + 12]
                    mem[_141 + 32] = _86 / _88
                    mem[_141 + 64] = _88
                    stor11[address(_82)].field_0++
                    stor11[address(_82)][stor11[address(_82)].field_0].field_0 = stor[_84 + s + 12]
                    stor11[address(_82)][stor11[address(_82)].field_0].field_256 = _86 / _88
                    stor11[address(_82)][stor11[address(_82)].field_0].field_512 = _88
                    mem[0] = address(_82)
                    mem[32] = 8
                    stor8[address(_82)] = 1
                    mem[mem[64]] = _86 / _88
                    emit Lock((_86 / _88), address(_82));
                s = s + 1
                continue 
        else:
            require mem[(32 * idx) + (32 * arg1.length) + 160] < 36
            require msg.sender == owner
            require stor7[mem[(32 * idx) + 140 len 20]] >= mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= stor7[address(mem[(32 * idx) + 128])]
            stor7[address(mem[(32 * idx) + 128])] -= mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 11
            _92 = sha3(address(mem[(32 * idx) + 128]), 11)
            _93 = mem[64]
            mem[64] = mem[64] + 96
            mem[_93] = stor12[mem[(32 * idx) + (32 * arg1.length) + 160]]
            mem[_93 + 32] = _86
            mem[_93 + 64] = _88
            stor[_92]++
            stor[(3 * stor[_92]) + sha3(_92)] = stor12[_84]
            stor[(3 * stor[_92]) + sha3(_92) + 1] = _86
            stor[(3 * stor[_92]) + sha3(_92) + 2] = _88
            mem[0] = address(_82)
            mem[32] = 8
            stor8[address(_82)] = 1
            mem[mem[64]] = _86
            emit Lock(_86, address(_82));
        idx = idx + 1
        continue 
    return 1
}



}
