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
mapping of uint256 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint256 allowance;
array of struct stor10;

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
    return bool(stor8[arg1])
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
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

function unfreezeAccount(address arg1) {
    require msg.sender == owner
    require stor8[address(arg1)]
    stor8[address(arg1)] = 0
    emit Unfreeze(arg1);
    return 1
}

function freezeAccount(address arg1) {
    require msg.sender == owner
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    emit Freeze(arg1);
    return 1
}

function acceptOwnership() {
    require msg.sender
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
    return 0
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function distribute(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 <= stor6[stor0]
    require arg2 <= stor6[stor0]
    stor6[stor0] -= arg2
    require stor6[address(arg1)] + arg2 >= stor6[address(arg1)]
    stor6[address(arg1)] += arg2
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

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    require not stor8[address(msg.sender)]
    if stor7[address(msg.sender)]:
        # nil
    else:
        require arg1
        require arg2 <= stor6[address(msg.sender)]
        require arg2 <= stor6[address(msg.sender)]
        stor6[address(msg.sender)] -= arg2
        require stor6[address(arg1)] + arg2 >= stor6[address(arg1)]
        stor6[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require ext_code.size(arg1) > 0
    require not uint8(stor1.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function showLockState(address arg1, uint256 arg2) {
    if not stor7[address(arg1)]:
        return bool(stor7[address(arg1)]), stor10[address(arg1)].field_0, 0, 0, 0, 0
    require arg2 < stor10[address(arg1)].field_0
    require arg2 < stor10[address(arg1)].field_0
    require arg2 < stor10[address(arg1)].field_0
    require arg2 < stor10[address(arg1)].field_0
    return bool(stor7[address(arg1)]), 
           stor10[address(arg1)].field_0,
           stor10[address(arg1)][arg2].field_768,
           stor10[address(arg1)][arg2].field_0,
           stor10[address(arg1)][arg2].field_256,
           stor10[address(arg1)][arg2].field_512
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor1.field_160)
    require not stor8[address(arg1)]
    if stor7[address(arg1)]:
        # nil
    else:
        require arg2
        require arg3 <= stor6[address(arg1)]
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        require arg3 <= stor6[address(arg1)]
        stor6[address(arg1)] -= arg3
        require stor6[address(arg2)] + arg3 >= stor6[address(arg2)]
        stor6[address(arg2)] += arg3
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer(arg3, arg1, arg2);
        return 1
}

function lock(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == owner
    require stor6[address(arg1)] >= arg2
    require arg2 <= stor6[address(arg1)]
    stor6[address(arg1)] -= arg2
    if arg4:
        if not arg2 / 100:
            stor10[address(arg1)].field_0++
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = arg3
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_256 = arg4
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_512 = 0
        else:
            require arg2 / 100
            require arg2 / 100 * arg5 / arg2 / 100 == arg5
            stor10[address(arg1)].field_0++
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = arg3
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_256 = arg4
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_512 = arg2 / 100 * arg5
    else:
        if not arg2 / 100:
            stor10[address(arg1)].field_0++
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = arg3
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_256 = 1
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_512 = 0
        else:
            require arg2 / 100
            require arg2 / 100 * arg5 / arg2 / 100 == arg5
            stor10[address(arg1)].field_0++
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = arg3
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_256 = 1
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_512 = arg2 / 100 * arg5
    stor10[address(arg1)][stor10[address(arg1)].field_0].field_768 = arg2
    stor7[address(arg1)] = 1
    emit Lock(arg2, arg1);
    return 1
}

function unlock(address arg1, uint256 arg2) {
    require msg.sender == owner
    require stor7[address(arg1)]
    require arg2 < stor10[address(arg1)].field_0
    require arg2 < stor10[address(arg1)].field_0
    require arg2 < stor10[address(arg1)].field_0
    stor10[address(arg1)][arg2].field_0 = 0
    stor10[address(arg1)][arg2].field_256 = 0
    stor10[address(arg1)][arg2].field_512 = 0
    stor10[address(arg1)][arg2].field_768 = 0
    require 1 <= stor10[address(arg1)].field_0
    require stor10[address(arg1)].field_0 - 1 < stor10[address(arg1)].field_0
    require arg2 < stor10[address(arg1)].field_0
    stor10[address(arg1)][arg2].field_0 = stor10[address(arg1)][stor10[address(arg1)].field_0 - 1].field_0
    stor10[address(arg1)][arg2].field_256 = stor10[address(arg1)][stor10[address(arg1)].field_0 - 1].field_256
    stor10[address(arg1)][arg2].field_512 = stor10[address(arg1)][stor10[address(arg1)].field_0 - 1].field_512
    stor10[address(arg1)][arg2].field_768 = stor10[address(arg1)][stor10[address(arg1)].field_0 - 1].field_768
    stor10[address(arg1)].field_0--
    if stor10[address(arg1)].field_0 > stor10[address(arg1)].field_0 - 1:
        idx = 4 * stor10[address(arg1)].field_0 - 1
        while 4 * stor10[address(arg1)].field_0 > idx:
            stor10[address(arg1)][idx].field_0 = 0
            stor10[address(arg1)][idx].field_256 = 0
            stor10[address(arg1)][idx].field_512 = 0
            stor10[address(arg1)][idx].field_768 = 0
            idx = idx + 4
            continue 
    if not stor10[address(arg1)].field_0:
        stor7[address(arg1)] = 0
    emit Unlock(stor10[address(arg1)][arg2].field_768, arg1);
    require stor6[address(arg1)] + stor10[address(arg1)][arg2].field_768 >= stor6[address(arg1)]
    stor6[address(arg1)] += stor10[address(arg1)][arg2].field_768
    return 1
}

function balanceOf(address arg1) {
    if not stor7[address(arg1)]:
        return stor6[address(arg1)]
    idx = 0
    s = 0
    while idx < stor10[address(arg1)].field_0:
        require idx < stor10[address(arg1)].field_0
        require s + stor10[address(arg1)][idx].field_768 >= s
        mem[0] = arg1
        mem[32] = 10
        idx = idx + 1
        s = s + stor10[address(arg1)][idx].field_768
        continue 
    return (stor6[address(arg1)] + (s * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0 * stor10[address(arg1)].field_0))
}

function distributeWithLockup(address arg1, uint256 arg2, uint8 arg3) {
    require msg.sender == owner
    if arg3 != 3:
        if arg3 != 6:
            require arg3 == 12
    require msg.sender == owner
    require arg1
    require arg2 <= stor6[stor0]
    require arg2 <= stor6[stor0]
    stor6[stor0] -= arg2
    require stor6[address(arg1)] + arg2 >= stor6[address(arg1)]
    stor6[address(arg1)] += arg2
    emit Transfer(arg2, owner, arg1);
    require msg.sender == owner
    require stor6[address(arg1)] >= arg2
    require arg2 <= stor6[address(arg1)]
    stor6[address(arg1)] -= arg2
    if arg3 == 3:
        if not arg2 / 100:
            stor10[address(arg1)].field_0++
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = block.timestamp + (2160 * 24 * 3600)
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_256 = 2160 * 24 * 3600
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_512 = 0
        else:
            require arg2 / 100
            require 25 * arg2 / 100 / arg2 / 100 == 25
            stor10[address(arg1)].field_0++
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = block.timestamp + (2160 * 24 * 3600)
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_256 = 2160 * 24 * 3600
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_512 = 25 * arg2 / 100
    else:
        if arg3 != 6:
            if not arg2 / 100:
                stor10[address(arg1)].field_0++
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = block.timestamp + (8760 * 24 * 3600)
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_256 = 1
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_512 = 0
            else:
                require arg2 / 100
                require 100 * arg2 / 100 / arg2 / 100 == 100
                stor10[address(arg1)].field_0++
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = block.timestamp + (8760 * 24 * 3600)
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_256 = 1
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_512 = 100 * arg2 / 100
        else:
            if not arg2 / 100:
                stor10[address(arg1)].field_0++
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = block.timestamp + (4320 * 24 * 3600)
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_256 = 1
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_512 = 0
            else:
                require arg2 / 100
                require 100 * arg2 / 100 / arg2 / 100 == 100
                stor10[address(arg1)].field_0++
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = block.timestamp + (4320 * 24 * 3600)
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_256 = 1
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_512 = 100 * arg2 / 100
    stor10[address(arg1)][stor10[address(arg1)].field_0].field_768 = arg2
    stor7[address(arg1)] = 1
    emit Lock(arg2, arg1);
    return 1
}



}
