contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor7;
address sub_74866192Address;
address sub_8bb0022fAddress;

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
    return balanceOf[address(arg1)]
}

function sub_74866192(?) {
    return sub_74866192Address
}

function frozenAccounts(address arg1) {
    return bool(stor7[address(arg1)])
}

function sub_8bb0022f(?) {
    return sub_8bb0022fAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_fa83c42e(?) {
    require msg.sender == owner
    sub_74866192Address = arg1
    emit 0xd53f75ab: sub_74866192Address, arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require ext_code.size(sub_8bb0022fAddress)
    call sub_8bb0022fAddress.0x5c975abb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'pausedForAll is paused'
    require not uint8(stor3.field_160)
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require ext_code.size(sub_8bb0022fAddress)
    call sub_8bb0022fAddress.0x5c975abb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'pausedForAll is paused'
    require not uint8(stor3.field_160)
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function freeze(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    if arg1.length <= 0:
        revert with 0, 'the length of targets is 0'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'targets has zero address.'
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        _26 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 1
        emit FrozenFunds(1, address(_26));
        idx = idx + 1
        continue 
}

function unfreeze(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    if arg1.length <= 0:
        revert with 0, 'the length of targets is 0'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'targets has zero address.'
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]] = 0
        require idx < arg1.length
        _26 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0
        emit FrozenFunds(0, address(_26));
        idx = idx + 1
        continue 
}

function increaseAllowance(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require ext_code.size(sub_8bb0022fAddress)
    call sub_8bb0022fAddress.0x5c975abb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'pausedForAll is paused'
    require not uint8(stor3.field_160)
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require ext_code.size(sub_8bb0022fAddress)
    call sub_8bb0022fAddress.0x5c975abb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'pausedForAll is paused'
    if stor7[address(msg.sender)]:
        revert with 0, 'msg.sender address is frozen.'
    require not uint8(stor3.field_160)
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferWithMessage(address arg1, uint256 arg2, bytes arg3) {
    require not uint8(stor3.field_160)
    require ext_code.size(sub_8bb0022fAddress)
    call sub_8bb0022fAddress.0x5c975abb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'pausedForAll is paused'
    if stor7[address(msg.sender)]:
        revert with 0, 'msg.sender is frozen'
    emit 0x27ce9b0f: msg.sender, address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
    require not uint8(stor3.field_160)
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require ext_code.size(sub_8bb0022fAddress)
    call sub_8bb0022fAddress.0x5c975abb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'pausedForAll is paused'
    if stor7[address(arg1)]:
        revert with 0, 'from address is frozen.'
    require not uint8(stor3.field_160)
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burn(uint256 arg1) {
    require not uint8(stor3.field_160)
    require ext_code.size(sub_8bb0022fAddress)
    call sub_8bb0022fAddress.0x5c975abb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'pausedForAll is paused'
    require ext_code.size(sub_74866192Address)
    call sub_74866192Address.0x9b19251a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.sender is not added on whitelist'
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}



}
