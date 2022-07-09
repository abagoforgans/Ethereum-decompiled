contract main {




// =====================  Runtime code  =====================


address contractOwner;
mapping of struct vestingEndTime;
array of uint256 name;
array of uint256 symbol;
array of uint256 standard;
uint256 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function getVestingEndTime(address arg1) {
    return vestingEndTime[address(arg1)].field_256
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function contractOwner() {
    return contractOwner
}

function getVestedAmount(address arg1) {
    return vestingEndTime[address(arg1)].field_0
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function vestingEnded(address arg1) {
    if vestingEndTime[address(arg1)].field_256 > block.timestamp:
        return 0
    return 1
}

function endVesting(address arg1) {
    require msg.sender == contractOwner
    vestingEndTime[address(arg1)].field_256 = block.timestamp
}

function addVesting(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == contractOwner
    vestingEndTime[address(arg1)].field_0 = arg2
    vestingEndTime[address(arg1)].field_256 = arg3
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == contractOwner
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    mem[128] = 64
    mem[160] = arg1
    mem[192 len ceil32(arg1)] = mem[128 len ceil32(arg1)]
    emit Transfer(arg1, Array(len=arg1, data=mem[192 len arg1]), msg.sender, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    if vestingEndTime[address(arg1)].field_256 > block.timestamp:
        require vestingEndTime[address(arg1)].field_0 <= balanceOf[address(arg1)]
        require arg3 <= balanceOf[address(arg1)] - vestingEndTime[address(arg1)].field_0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    if vestingEndTime[address(msg.sender)].field_256 > block.timestamp:
        require vestingEndTime[address(msg.sender)].field_0 <= balanceOf[address(msg.sender)]
        require arg2 <= balanceOf[address(msg.sender)] - vestingEndTime[address(msg.sender)].field_0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    if vestingEndTime[address(msg.sender)].field_256 > block.timestamp:
        require vestingEndTime[address(msg.sender)].field_0 <= balanceOf[address(msg.sender)]
        require arg2 <= balanceOf[address(msg.sender)] - vestingEndTime[address(msg.sender)].field_0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    mem[128] = 64
    mem[160] = arg2
    mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
    emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
    return 1
}



}
