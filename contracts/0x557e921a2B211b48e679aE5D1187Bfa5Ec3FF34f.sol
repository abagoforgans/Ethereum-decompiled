contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimal;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;
mapping of uint8 stor7;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function decimal() {
    return decimal
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor7[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
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

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor7[address(arg1)] = uint8(arg2)
    emit FrozenFunds(arg2, arg1);
    return 1
}

function burn(uint256 arg1) {
    require balances[address(msg.sender)] >= arg1
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
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

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balances[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= balances[address(arg1)]
    balances[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender
    require arg1
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 > balances[address(arg1)]
    require not stor7[address(msg.sender)]
    require not stor7[address(arg1)]
    require balances[address(msg.sender)] + balances[address(arg1)] >= balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balances[address(msg.sender)] + balances[address(arg1)] == balances[address(msg.sender)] + balances[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg1
    require arg2
    require balances[address(arg1)] >= arg3
    require balances[address(arg2)] + arg3 > balances[address(arg2)]
    require not stor7[address(arg1)]
    require not stor7[address(arg2)]
    require balances[address(arg1)] + balances[address(arg2)] >= balances[address(arg1)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balances[address(arg1)] + balances[address(arg2)] == balances[address(arg1)] + balances[address(arg2)]
    return 1
}



}
