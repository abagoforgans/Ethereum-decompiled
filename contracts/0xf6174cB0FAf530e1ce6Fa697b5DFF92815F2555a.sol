contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
uint8 stor4;
array of uint256 stor5;

function _fallback() payable {
    stor0 = 10^14
    bool(stor3.length) = 0
    stor3.length.field_1 = 14
    stor3.length.field_8 = 'Lucky Ethereum' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 5
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'LETH' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor1[address(msg.sender)] = stor0
    return code.data[384 len 1794]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
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

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 > balances[address(arg1)]
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balances[address(arg1)] >= arg3
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    require balances[address(arg2)] + arg3 > balances[address(arg2)]
    balances[address(arg2)] += arg3
    balances[arg1] -= arg3
    if allowed[address(arg1)][address(msg.sender)] < -1:
        allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
