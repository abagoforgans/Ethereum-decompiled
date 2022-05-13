contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 granularity;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 decimals;
address stor8; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function granularity() {
    return granularity
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(stor8)
    call stor8.0x4277b5b1 with:
         gas gas_remaining wei
        args 0, 0, msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Validation(arg2, Mask(8, 248, ext_call.return_data[0]), msg.sender, arg1);
    if Mask(8, 248, ext_call.return_data[0]) != 0x100000000000000000000000000000000000000000000000000000000000000:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(stor8)
    call stor8.0xb3154db0 with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Validation(Mask(8, 248, ext_call.return_data[0]), arg1);
    require Mask(4, 248, ext_call.return_data[0]) == 0x100000000000000000000000000000000000000000000000000000000000000
    require granularity
    if not arg2 / granularity:
        require 0 == arg2
    else:
        require arg2 / granularity
        require arg2 / granularity * granularity / arg2 / granularity == granularity
        require arg2 / granularity * granularity == arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require granularity
    if not arg2 / granularity:
        require 0 == arg2
    else:
        require arg2 / granularity
        require arg2 / granularity * granularity / arg2 / granularity == granularity
        require arg2 / granularity * granularity == arg2
    require balanceOf[address(msg.sender)] >= arg2
    require ext_code.size(stor8)
    call stor8.0x4277b5b1 with:
         gas gas_remaining wei
        args 0, 0, msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Validation(arg2, Mask(8, 248, ext_call.return_data[0]), msg.sender, arg1);
    require Mask(4, 248, ext_call.return_data[0]) == 0x100000000000000000000000000000000000000000000000000000000000000
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require granularity
    if not arg3 / granularity:
        require 0 == arg3
    else:
        require arg3 / granularity
        require arg3 / granularity * granularity / arg3 / granularity == granularity
        require arg3 / granularity * granularity == arg3
    require balanceOf[address(arg1)] >= arg3
    require ext_code.size(stor8)
    call stor8.0x4277b5b1 with:
         gas gas_remaining wei
        args 0, 0, address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Validation(arg3, Mask(8, 248, ext_call.return_data[0]), arg1, arg2);
    require Mask(4, 248, ext_call.return_data[0]) == 0x100000000000000000000000000000000000000000000000000000000000000
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
