contract main {




// =====================  Runtime code  =====================


mapping of struct lockBalanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 168
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function mintingFinished() {
    return bool(uint8(stor3.field_168))
}

function name() {
    return name[0 len name.length]
}

function lockBalanceOf(address arg1) {
    return lockBalanceOf[address(arg1)].field_128
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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function unlockBalanceOf(address arg1) {
    return lockBalanceOf[address(arg1)].field_0
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

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_168)
    Mask(88, 0, stor3.field_168) = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    if not lockBalanceOf[address(arg1)].field_128:
        return lockBalanceOf[address(arg1)].field_0
    require lockBalanceOf[address(arg1)].field_0 + lockBalanceOf[address(arg1)].field_128 >= lockBalanceOf[address(arg1)].field_0
    return (lockBalanceOf[address(arg1)].field_0 + lockBalanceOf[address(arg1)].field_128)
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_168)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require arg2 + lockBalanceOf[address(arg1)].field_0 >= arg2
    require uint128(arg2 + lockBalanceOf[address(arg1)].field_0) == arg2 + lockBalanceOf[address(arg1)].field_0
    lockBalanceOf[address(arg1)].field_0 = uint128(arg2 + lockBalanceOf[address(arg1)].field_0)
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function sub_d2c9e67b(?) {
    require msg.sender == owner
    require arg2 <= lockBalanceOf[address(arg1)].field_128
    require arg2 + lockBalanceOf[address(arg1)].field_0 >= arg2
    require uint128(arg2 + lockBalanceOf[address(arg1)].field_0) == arg2 + lockBalanceOf[address(arg1)].field_0
    lockBalanceOf[address(arg1)].field_0 = uint128(arg2 + lockBalanceOf[address(arg1)].field_0)
    lockBalanceOf[address(arg1)].field_128 = uint128(lockBalanceOf[address(arg1)].field_128 - arg2)
    emit Transfer(arg2, this.address, arg1);
    return 1
}

function _burn(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg2 <= lockBalanceOf[address(arg1)].field_0
    require arg3 <= lockBalanceOf[address(arg1)].field_128
    lockBalanceOf[address(arg1)].field_0 = uint128(lockBalanceOf[address(arg1)].field_0 - arg2)
    lockBalanceOf[address(arg1)].field_128 = uint128(lockBalanceOf[address(arg1)].field_128 - arg3)
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg3 <= totalSupply
    totalSupply -= arg3
    emit Burn((arg2 + arg3), arg1);
    emit Transfer((arg2 + arg3), arg1, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg2 > 0
    require arg2 <= lockBalanceOf[address(msg.sender)].field_0
    require arg1
    lockBalanceOf[address(msg.sender)].field_0 = uint128(lockBalanceOf[address(msg.sender)].field_0 - arg2)
    require arg2 + lockBalanceOf[address(arg1)].field_0 >= arg2
    require uint128(arg2 + lockBalanceOf[address(arg1)].field_0) == arg2 + lockBalanceOf[address(arg1)].field_0
    lockBalanceOf[address(arg1)].field_0 = uint128(arg2 + lockBalanceOf[address(arg1)].field_0)
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require arg3 <= lockBalanceOf[address(arg1)].field_0
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    lockBalanceOf[address(arg1)].field_0 = uint128(lockBalanceOf[address(arg1)].field_0 - arg3)
    require arg3 + lockBalanceOf[address(arg2)].field_0 >= arg3
    require uint128(arg3 + lockBalanceOf[address(arg2)].field_0) == arg3 + lockBalanceOf[address(arg2)].field_0
    lockBalanceOf[address(arg2)].field_0 = uint128(arg3 + lockBalanceOf[address(arg2)].field_0)
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_d0140f3f(?) {
    require msg.sender == owner
    require arg2 + arg3 <= lockBalanceOf[address(msg.sender)].field_0
    require arg1
    lockBalanceOf[address(msg.sender)].field_0 = uint128(lockBalanceOf[address(msg.sender)].field_0 - arg2)
    lockBalanceOf[address(msg.sender)].field_0 = uint128(lockBalanceOf[address(msg.sender)].field_0 - arg3)
    require arg2 + lockBalanceOf[address(arg1)].field_0 >= arg2
    require uint128(arg2 + lockBalanceOf[address(arg1)].field_0) == arg2 + lockBalanceOf[address(arg1)].field_0
    lockBalanceOf[address(arg1)].field_0 = uint128(arg2 + lockBalanceOf[address(arg1)].field_0)
    require arg3 + lockBalanceOf[address(arg1)].field_128 >= arg3
    require uint128(arg3 + lockBalanceOf[address(arg1)].field_128) == arg3 + lockBalanceOf[address(arg1)].field_128
    lockBalanceOf[address(arg1)].field_128 = uint128(arg3 + lockBalanceOf[address(arg1)].field_128)
    emit Transfer((arg2 + arg3), msg.sender, arg1);
    return 1
}

function mintTimelocked(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require not uint8(stor3.field_168)
    create contract with 0 wei
                    code: code.data[12406 len 1341], address(this.address), address(arg1), arg3
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require not uint8(stor3.field_168)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require arg2 + lockBalanceOf[address(create.new_address)].field_0 >= arg2
    require uint128(arg2 + lockBalanceOf[address(create.new_address)].field_0) == arg2 + lockBalanceOf[address(create.new_address)].field_0
    lockBalanceOf[address(create.new_address)].field_0 = uint128(arg2 + lockBalanceOf[address(create.new_address)].field_0)
    emit Mint(arg2, address(create.new_address));
    emit Transfer(arg2, 0, address(create.new_address));
    return address(create.new_address)
}



}
