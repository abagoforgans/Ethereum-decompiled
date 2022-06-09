contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint8 stor2; offset 160
uint128 stor2; offset 160
address owner;
mapping of uint256 allowance;
array of address newContracts;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
address stor9;

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

function newContracts(uint256 arg1) {
    require arg1 < newContracts.length
    return newContracts[arg1]
}

function allowance(address arg1, address arg2) {
    require not uint8(stor2.field_160)
    return allowance[address(arg1)][address(arg2)]
}

function getNumberContracts() {
    return newContracts.length
}

function _fallback() payable {
  stop
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

function approve(address arg1, uint256 arg2) {
    require not uint8(stor2.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor2.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_bc1a7fd7(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, '', mem[164]
    require arg2 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
    return 1
}

function sub_9783b8bf(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, '', mem[164]
    require ext_code.size(stor9)
    call stor9.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor2.field_160)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor2.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_fa361ec5(?) {
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[8641 len 7069], address(this.address), Array(len=arg1.length + arg3.length + 224, data=arg1.length, arg1[all], arg3.length, arg3[all], arg4.length, arg4[all]), arg2, arg1.length + 192
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    newContracts.length++
    newContracts[newContracts.length] = address(create.new_address)
    require msg.sender == owner
    if not address(create.new_address):
        revert with 0, '', code.data[8709 len 32]
    require arg2 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= arg2
    require balanceOf[address(create.new_address)] + arg2 >= balanceOf[address(create.new_address)]
    balanceOf[address(create.new_address)] += arg2
    emit Transfer(arg2, this.address, address(create.new_address));
    require ext_code.size(stor9)
    call stor9.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(create.new_address), 100 * 10^6 * 10^decimals / 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    allowance[address(this.address)][address(create.new_address)] = 100 * 10^6 * 10^decimals
    emit Approval((100 * 10^6 * 10^decimals), this.address, address(create.new_address));
    return address(create.new_address)
}



}
