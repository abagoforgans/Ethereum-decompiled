contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address pendingOwner;
mapping of uint8 stor2;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 freezeOf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function stopped() {
    return bool(uint8(stor1.field_160))
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function freezeOf(address arg1) {
    require calldata.size - 4 >= 32
    return freezeOf[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function pendingOwner() {
    return pendingOwner
}

function freezeAddresses(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownership: Access denied'
    Mask(96, 0, stor1.field_160) = 1
    emit Paused()
}

function resume() {
    if owner != msg.sender:
        revert with 0, 'Ownership: Access denied'
    Mask(96, 0, stor1.field_160) = 0
    emit Resumed()
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownership: Access denied'
    pendingOwner = arg1
}

function freezeAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownership: Access denied'
    if not stor2[address(arg1)]:
        stor2[address(arg1)] = 1
        emit FreezeAddress(arg1);
    return 1
}

function unfreezeAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownership: Access denied'
    if stor2[address(arg1)]:
        stor2[address(arg1)] = 0
        emit UnfreezeAddress(arg1);
    return 1
}

function acceptOwnership() {
    if pendingOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownership: Only new owner is allowed'
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor1.field_160):
        revert with 0, 'Controllable: Paused'
    if stor2[address(msg.sender)]:
        revert with 0, 'Controllable: Not active'
    if stor2[address(arg1)]:
        revert with 0, 'Controllable: Not active'
    if 0 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StandardToken.approve: Zero value'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freeze(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownership: Access denied'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RLACoin.freeze: Insufficient fund'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: Subtraction exception'
    balanceOf[address(arg1)] -= arg2
    if freezeOf[address(arg1)] + arg2 < freezeOf[address(arg1)]:
        revert with 0, 'SafeMath: Addition exception'
    freezeOf[address(arg1)] += arg2
    emit Freeze(arg2, arg1);
    return 1
}

function unfreeze(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownership: Access denied'
    if arg2 > freezeOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RLACoin.unfreeze: Insufficient fund'
    if arg2 > freezeOf[address(arg1)]:
        revert with 0, 'SafeMath: Subtraction exception'
    freezeOf[address(arg1)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: Addition exception'
    balanceOf[address(arg1)] += arg2
    emit Unfreeze(arg2, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor1.field_160):
        revert with 0, 'Controllable: Paused'
    if stor2[address(msg.sender)]:
        revert with 0, 'Controllable: Not active'
    if stor2[address(arg1)]:
        revert with 0, 'Controllable: Not active'
    if 0 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StandardToken.decreaseApproval: Zero value'
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor1.field_160):
        revert with 0, 'Controllable: Paused'
    if stor2[address(msg.sender)]:
        revert with 0, 'Controllable: Not active'
    if stor2[address(arg1)]:
        revert with 0, 'Controllable: Not active'
    if 0 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StandardToken.increaseApproval: Zero value'
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: Addition exception'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor1.field_160):
        revert with 0, 'Controllable: Paused'
    if stor2[address(msg.sender)]:
        revert with 0, 'Controllable: Not active'
    if stor2[address(arg1)]:
        revert with 0, 'Controllable: Not active'
    if 0 >= arg2:
        revert with 0, 'BasicToken.transfer: Zero value'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BasicToken.transfer: Insufficient fund'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: Subtraction exception'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: Addition exception'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if uint8(stor1.field_160):
        revert with 0, 'Controllable: Paused'
    if stor2[address(msg.sender)]:
        revert with 0, 'Controllable: Not active'
    if stor2[address(arg1)]:
        revert with 0, 'Controllable: Not active'
    if 0 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StandardToken.approve: Zero value'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[260 len arg3.length] = arg3[all]
    mem[arg3.length + 260] = 0
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, arg3[all], mem[arg3.length + 260 len ceil32(arg3.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if uint8(stor1.field_160):
        revert with 0, 'Controllable: Paused'
    if stor2[address(msg.sender)]:
        revert with 0, 'Controllable: Not active'
    if stor2[address(arg1)]:
        revert with 0, 'Controllable: Not active'
    if stor2[address(arg2)]:
        revert with 0, 'Controllable: Not active'
    if 0 >= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StandardToken.transferFrom: Zero value'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StandardToken.transferFrom: Insufficient fund'
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StandardToken.transferFrom: Insufficient allowance'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: Subtraction exception'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: Addition exception'
    balanceOf[address(arg2)] += arg3
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: Subtraction exception'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
