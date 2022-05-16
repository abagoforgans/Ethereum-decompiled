contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_6b98bed7;
uint256 ratio;
uint8 stor6;
mapping of uint256 balanceOf;
mapping of uint256 sub_0384776d;
mapping of uint256 allowance;
address owner;

function sub_0384776d(?) {
    return sub_0384776d[arg1]
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_6b98bed7(?) {
    return sub_6b98bed7
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function ratio() {
    return ratio
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setRatio(uint256 arg1) {
    require msg.sender == owner
    ratio = arg1
    return 1
}

function setFunding(bool arg1) {
    require msg.sender == owner
    stor6 = uint8(arg1)
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function lockToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    sub_0384776d[address(arg1)] += arg2
    sub_6b98bed7 += arg2
    emit Lock(arg2, arg1);
    return 1
}

function unlockToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require sub_0384776d[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    sub_0384776d[address(arg1)] -= arg2
    sub_6b98bed7 -= arg2
    emit UnLock(arg2, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
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
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}

function buyToken() payable {
    require stor6
    require balanceOf[stor10] >= msg.value * ratio
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender
    require balanceOf[stor10] >= msg.value * ratio
    require balanceOf[address(msg.sender)] + (msg.value * ratio) >= balanceOf[address(msg.sender)]
    balanceOf[stor10] += -1 * msg.value * ratio
    balanceOf[address(msg.sender)] += msg.value * ratio
    emit Transfer((msg.value * ratio), owner, msg.sender);
    require balanceOf[stor10] + balanceOf[address(msg.sender)] == balanceOf[stor10] + balanceOf[address(msg.sender)]
    emit TokenBuy((msg.value * ratio), msg.sender);
    return 1
}



}
