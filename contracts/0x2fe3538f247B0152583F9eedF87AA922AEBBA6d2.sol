contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
uint8 stor2; offset 160
uint128 stor2; offset 160
address owner;
mapping of uint256 allowance;
mapping of uint8 stor4;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

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
    return bool(uint8(stor2.field_160))
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

function frozenAccount(address arg1) {
    return bool(stor4[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor4[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor2.field_160)
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require not uint8(stor2.field_160)
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if ext_code.size(arg1) <= 0:
        return 1
    require ext_code.size(arg1)
    call arg1.0xc0ee0b8a with:
         gas gas_remaining wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor2.field_160)
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    require not uint8(stor2.field_160)
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if ext_code.size(arg1) <= 0:
        return 1
    require ext_code.size(arg1)
    call arg1.0xc0ee0b8a with:
         gas gas_remaining wei
        args msg.sender, arg2, 96, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require not uint8(stor2.field_160)
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) <= 0:
        return 1
    require ext_code.size(arg2)
    call arg2.0xc0ee0b8a with:
         gas gas_remaining wei
        args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor2.field_160)
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require not uint8(stor2.field_160)
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) <= 0:
        return 1
    require ext_code.size(arg2)
    call arg2.0xc0ee0b8a with:
         gas gas_remaining wei
        args address(arg1), arg3, 96, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
