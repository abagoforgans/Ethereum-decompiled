contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balances;
mapping of uint256 allowed;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
address stor5;
mapping of uint8 stor6;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function admin_setAdmin(address arg1, bool arg2) {
    require msg.sender == stor5
    stor6[address(arg1)] = uint8(arg2)
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_428bfc13(?) {
    require stor5 == msg.sender
    require balances[stor5] + arg1 > balances[stor5]
    require totalSupply + arg1 > totalSupply
    balances[stor5] += arg1
    totalSupply += arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function admin_transfer(address arg1, address arg2, uint256 arg3) {
    require stor6[address(msg.sender)]
    require balances[address(arg1)] >= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg1)] -= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balances[address(arg1)] >= arg3
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg1)] -= arg3
    balances[address(arg2)] += arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
