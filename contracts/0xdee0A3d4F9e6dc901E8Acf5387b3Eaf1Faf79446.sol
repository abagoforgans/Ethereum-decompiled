contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 _totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 frozenOf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return _totalSupply
}

function frozenOf(address arg1) {
    return frozenOf[address(arg1)]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
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

function _balanceOf(address arg1) {
    return balanceOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_2bc094d7(?) {
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function frozen(address arg1, uint256 arg2) {
    require msg.sender == owner
    if arg2 < 0:
        return 0
    if balanceOf[address(arg1)] < arg2:
        return 0
    frozenOf[address(arg1)] = arg2
    emit FrozenFunds(address(arg1), arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
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

function sub_10322aa3(?) {
    require arg4 <= allowance[address(arg2)][address(arg1)]
    require arg4 <= allowance[address(arg2)][address(arg1)]
    allowance[address(arg2)][address(arg1)] -= arg4
    require arg3
    require balanceOf[address(arg2)] >= arg4
    require balanceOf[address(arg3)] + arg4 >= balanceOf[address(arg3)]
    require balanceOf[address(arg3)] + arg4 > balanceOf[address(arg3)]
    require balanceOf[address(arg2)] + balanceOf[address(arg3)] >= balanceOf[address(arg2)]
    require arg4 <= balanceOf[address(arg2)]
    balanceOf[address(arg2)] -= arg4
    require balanceOf[address(arg3)] + arg4 >= balanceOf[address(arg3)]
    balanceOf[address(arg3)] += arg4
    emit Transfer(arg4, arg2, arg3);
    require balanceOf[address(arg2)] + balanceOf[address(arg3)] >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + balanceOf[address(arg3)] == balanceOf[address(arg2)] + balanceOf[address(arg3)]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if arg2 <= 0:
        return 0
    require frozenOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
    if balanceOf[address(msg.sender)] - frozenOf[address(msg.sender)] < arg2:
        return 0
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 <= 0:
        return 0
    if allowance[address(arg1)][address(msg.sender)] <= 0:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    require frozenOf[address(arg1)] <= balanceOf[address(arg1)]
    if balanceOf[address(arg1)] - frozenOf[address(arg1)] < arg3:
        return 0
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
