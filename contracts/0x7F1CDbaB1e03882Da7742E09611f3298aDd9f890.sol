contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_f7a21292;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 burned;
uint256 percentage;
mapping of uint8 stor8;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor11;

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
    return balanceOf[arg1]
}

function burned() {
    return burned
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor11[arg1])
}

function sub_b9d02b8b(?) {
    return bool(stor8[arg1])
}

function percentage() {
    return percentage
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_f7a21292(?) {
    return sub_f7a21292
}

function sub_f99309f1(?) {
    return bool(stor8[address(arg1)])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function sub_34dcafbb(?) {
    require msg.sender == owner
    require arg1
    require stor8[address(arg1)]
    stor8[address(arg1)] = 0
}

function sub_bbcd1db9(?) {
    require msg.sender == owner
    require arg1 <= 100
    require arg1 >= 0
    percentage = arg1
    emit 0x517b7160: arg1, msg.sender
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor11[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function sub_49f0399a(?) {
    require msg.sender == owner
    require arg1
    require bool(stor8[address(arg1)]) != 1
    stor8[address(arg1)] = 1
    sub_f7a21292++
    emit NewReceiver(msg.sender, arg1);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    burned += arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    burned += arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor11[address(arg1)]
    require not stor11[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1 != this.address
    if not stor8[address(arg1)]:
        require arg1
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
        require not stor11[address(msg.sender)]
        require not stor11[address(arg1)]
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not arg2:
            allowance[address(msg.sender)][address(msg.sender)] = 0
            require balanceOf[address(msg.sender)] >= 0
            require 0 <= allowance[address(msg.sender)][address(msg.sender)]
            emit Burn(0, msg.sender);
            require 0 <= arg2
            require arg1
            require balanceOf[address(msg.sender)] >= arg2
            require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
            require not stor11[address(msg.sender)]
            require not stor11[address(arg1)]
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            require arg2
            require arg2 * percentage / arg2 == percentage
            allowance[address(msg.sender)][address(msg.sender)] = arg2 * percentage / 100
            require balanceOf[address(msg.sender)] >= arg2 * percentage / 100
            require arg2 * percentage / 100 <= allowance[address(msg.sender)][address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2 * percentage / 100
            allowance[address(msg.sender)][address(msg.sender)] -= arg2 * percentage / 100
            totalSupply -= arg2 * percentage / 100
            burned += arg2 * percentage / 100
            emit Burn((arg2 * percentage / 100), msg.sender);
            require arg2 * percentage / 100 <= arg2
            require arg1
            require balanceOf[address(msg.sender)] >= arg2 - (arg2 * percentage / 100)
            require balanceOf[address(arg1)] + arg2 - (arg2 * percentage / 100) > balanceOf[address(arg1)]
            require not stor11[address(msg.sender)]
            require not stor11[address(arg1)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * percentage / 100)
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * percentage / 100)
            emit Transfer((arg2 - (arg2 * percentage / 100)), msg.sender, arg1);
}



}
