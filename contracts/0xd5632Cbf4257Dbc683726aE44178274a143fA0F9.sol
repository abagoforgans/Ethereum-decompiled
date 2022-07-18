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
mapping of uint256 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
mapping of uint256 allowance;
mapping of struct stor12;

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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozen(address arg1) {
    return bool(stor10[arg1])
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

function balanceOf(address arg1) {
    return (stor8[address(arg1)] + stor12[address(arg1)].field_768)
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
    require stor10[address(arg1)]
    stor10[address(arg1)] = 0
    emit Unfreeze(arg1);
    return 1
}

function freezeAccount(address arg1) {
    require msg.sender == owner
    require not stor10[address(arg1)]
    stor10[address(arg1)] = 1
    emit Freeze(arg1);
    return 1
}

function showLockState(address arg1) {
    return bool(stor9[address(arg1)]), 
           stor12[address(arg1)].field_768,
           stor12[address(arg1)].field_0,
           stor12[address(arg1)].field_256,
           stor12[address(arg1)].field_512
}

function mint(uint256 arg1) {
    require msg.sender == owner
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    require arg1 + stor8[stor0] >= stor8[stor0]
    stor8[stor0] += arg1
    emit Transfer(arg1, 0, owner);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= stor8[msg.sender]
    require arg1 <= stor8[msg.sender]
    stor8[address(msg.sender)] = stor8[msg.sender] - arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function distribute(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 <= stor8[stor0]
    require arg2 <= stor8[stor0]
    stor8[stor0] -= arg2
    require arg2 + stor8[arg1] >= stor8[arg1]
    stor8[address(arg1)] = arg2 + stor8[arg1]
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

function unlock(address arg1) {
    require msg.sender == owner
    require 1 == bool(stor9[address(arg1)])
    stor12[address(arg1)].field_0 = 0
    stor12[address(arg1)].field_256 = 0
    stor12[address(arg1)].field_512 = 0
    stor12[address(arg1)].field_768 = 0
    stor9[address(arg1)] = 0
    emit Unlock(stor12[address(arg1)].field_768, arg1);
    require stor12[address(arg1)].field_768 + stor8[address(arg1)] >= stor8[address(arg1)]
    stor8[address(arg1)] += stor12[address(arg1)].field_768
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require ext_code.size(arg1) > 0
    require not stor1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function lock(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == owner
    require not stor9[address(arg1)]
    require arg2 <= stor8[address(arg1)]
    require arg2 <= stor8[address(arg1)]
    stor8[address(arg1)] -= arg2
    if not arg2 / 100:
        stor12[address(arg1)].field_0 = arg3
        stor12[address(arg1)].field_256 = arg4
        stor12[address(arg1)].field_512 = 0
    else:
        require arg5 * arg2 / 100 / arg2 / 100 == arg5
        stor12[address(arg1)].field_0 = arg3
        stor12[address(arg1)].field_256 = arg4
        stor12[address(arg1)].field_512 = arg5 * arg2 / 100
    stor12[address(arg1)].field_768 = arg2
    stor9[address(arg1)] = 1
    emit Lock(arg2, arg1);
    return 1
}

function distributeWithLockup(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == owner
    require arg1
    require arg2 <= stor8[stor0]
    require arg2 <= stor8[stor0]
    stor8[stor0] -= arg2
    require arg2 + stor8[arg1] >= stor8[arg1]
    stor8[address(arg1)] = arg2 + stor8[arg1]
    emit Transfer(arg2, owner, arg1);
    require msg.sender == owner
    require not stor9[address(arg1)]
    require arg2 <= stor8[address(arg1)]
    require arg2 <= stor8[address(arg1)]
    stor8[address(arg1)] -= arg2
    if not arg2 / 100:
        stor12[address(arg1)].field_0 = arg3
        stor12[address(arg1)].field_256 = arg4
        stor12[address(arg1)].field_512 = 0
    else:
        require arg5 * arg2 / 100 / arg2 / 100 == arg5
        stor12[address(arg1)].field_0 = arg3
        stor12[address(arg1)].field_256 = arg4
        stor12[address(arg1)].field_512 = arg5 * arg2 / 100
    stor12[address(arg1)].field_768 = arg2
    stor9[address(arg1)] = 1
    emit Lock(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor1
    require not stor10[msg.sender]
    if stor9[msg.sender]:
        if block.timestamp >= stor12[address(msg.sender)].field_0:
            require stor9[address(msg.sender)]
            s = 0
            while block.timestamp >= stor12[address(msg.sender)].field_0:
                if stor12[address(msg.sender)].field_768 > stor12[address(msg.sender)].field_512:
                    require stor12[address(msg.sender)].field_512 + s >= s
                    require stor12[address(msg.sender)].field_512 <= stor12[address(msg.sender)].field_768
                    stor12[address(msg.sender)].field_768 -= stor12[address(msg.sender)].field_512
                    require stor12[address(msg.sender)].field_256 + stor12[address(msg.sender)].field_0 >= stor12[address(msg.sender)].field_0
                    stor12[address(msg.sender)].field_0 += stor12[address(msg.sender)].field_256
                    mem[0] = msg.sender
                    mem[32] = 12
                    s = stor12[address(msg.sender)].field_512 + s
                    continue 
                require stor12[address(msg.sender)].field_768 + s >= s
                stor12[address(msg.sender)].field_0 = 0
                stor12[address(msg.sender)].field_256 = 0
                stor12[address(msg.sender)].field_512 = 0
                stor12[address(msg.sender)].field_768 = 0
                stor9[address(msg.sender)] = 0
                emit Unlock((stor12[address(msg.sender)].field_768 + s), msg.sender);
                require stor12[address(msg.sender)].field_768 + s + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                stor8[address(msg.sender)] = stor12[address(msg.sender)].field_768 + s + stor8[address(msg.sender)]
                require arg1
                require arg2 <= stor8[msg.sender]
                require arg2 <= stor8[msg.sender]
                stor8[msg.sender] -= arg2
                require arg2 + stor8[arg1] >= stor8[arg1]
                stor8[address(arg1)] = arg2 + stor8[arg1]
                emit Transfer(arg2, msg.sender, arg1);
                return 1
            emit Unlock(s, msg.sender);
            require s + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] += s
    require arg1
    require arg2 <= stor8[msg.sender]
    require arg2 <= stor8[msg.sender]
    stor8[msg.sender] -= arg2
    require arg2 + stor8[arg1] >= stor8[arg1]
    stor8[address(arg1)] = arg2 + stor8[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor1
    require not stor10[address(arg1)]
    if stor9[address(arg1)]:
        if block.timestamp >= stor12[address(arg1)].field_0:
            require stor9[address(arg1)]
            s = 0
            while block.timestamp >= stor12[address(arg1)].field_0:
                if stor12[address(arg1)].field_768 > stor12[address(arg1)].field_512:
                    require stor12[address(arg1)].field_512 + s >= s
                    require stor12[address(arg1)].field_512 <= stor12[address(arg1)].field_768
                    stor12[address(arg1)].field_768 -= stor12[address(arg1)].field_512
                    require stor12[address(arg1)].field_256 + stor12[address(arg1)].field_0 >= stor12[address(arg1)].field_0
                    stor12[address(arg1)].field_0 += stor12[address(arg1)].field_256
                    mem[0] = arg1
                    mem[32] = 12
                    s = stor12[address(arg1)].field_512 + s
                    continue 
                require stor12[address(arg1)].field_768 + s >= s
                stor12[address(arg1)].field_0 = 0
                stor12[address(arg1)].field_256 = 0
                stor12[address(arg1)].field_512 = 0
                stor12[address(arg1)].field_768 = 0
                stor9[address(arg1)] = 0
                emit Unlock((stor12[address(arg1)].field_768 + s), arg1);
                require stor12[address(arg1)].field_768 + s + stor8[address(arg1)] >= stor8[address(arg1)]
                stor8[address(arg1)] = stor12[address(arg1)].field_768 + s + stor8[address(arg1)]
                require arg2
                require arg3 <= stor8[address(arg1)]
                require arg3 <= allowance[address(arg1)][msg.sender]
                require arg3 <= stor8[address(arg1)]
                stor8[address(arg1)] -= arg3
                require arg3 + stor8[arg2] >= stor8[arg2]
                stor8[address(arg2)] = arg3 + stor8[arg2]
                require arg3 <= allowance[address(arg1)][msg.sender]
                allowance[address(arg1)][msg.sender] -= arg3
                emit Transfer(arg3, arg1, arg2);
                return 1
            emit Unlock(s, arg1);
            require s + stor8[address(arg1)] >= stor8[address(arg1)]
            stor8[address(arg1)] += s
    require arg2
    require arg3 <= stor8[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= stor8[address(arg1)]
    stor8[address(arg1)] -= arg3
    require arg3 + stor8[arg2] >= stor8[arg2]
    stor8[address(arg2)] = arg3 + stor8[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
