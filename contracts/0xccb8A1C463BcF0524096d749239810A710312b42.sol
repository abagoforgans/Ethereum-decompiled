contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor7;

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

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(uint8(stor7[arg1]))
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == stor4
    stor4 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function claimfordividend() {
    require msg.sender == stor4
    uint8(stor7[address(msg.sender)]) = 1
    emit FrozenFunds(msg.sender, 1);
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == stor4
    uint8(stor7[address(arg1)]) = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function unfreezeAccount(address arg1, bool arg2) {
    require msg.sender == stor4
    uint256(stor7[address(arg1)]) = not arg2 or Mask(248, 8, uint256(stor7[address(arg1)]))
    emit unFrozenFunds(address(arg1), not arg2);
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == stor4
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
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

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    require not uint8(stor7[address(msg.sender)])
    require not uint8(stor7[address(arg1)])
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
    require not uint8(stor7[address(arg1)])
    require not uint8(stor7[address(arg2)])
    return 1
}

function payoutfordividend(address arg1, uint256 arg2) {
    require msg.sender == stor4
    require arg1
    require balanceOf[address(msg.sender)] >= 5 * (arg2 * balanceOf[address(arg1)] / 100) + 4 / 5
    require balanceOf[address(arg1)] + (5 * (arg2 * balanceOf[address(arg1)] / 100) + 4 / 5) >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] += -5 * (arg2 * balanceOf[address(arg1)] / 100) + 4 / 5
    balanceOf[address(arg1)] += 5 * (arg2 * balanceOf[address(arg1)] / 100) + 4 / 5
    emit Transfer((5 * (arg2 * balanceOf[address(arg1)] / 100) + 4 / 5), msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    require not uint8(stor7[address(msg.sender)])
    require not uint8(stor7[address(arg1)])
    require msg.sender == stor4
    uint8(stor7[address(arg1)]) = 0
    emit unFrozenFunds(address(arg1), 0);
}



}
