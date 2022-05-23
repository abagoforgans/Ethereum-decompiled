contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor2;
array of uint256 stor5;
uint8 stor6;
array of uint256 stor7;

function _fallback() {
    stor1 = msg.sender
    bool(stor5.length) = 0
    stor5.length.field_1 = 12
    stor5.length.field_8 = 'BUSINESSCOIN' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 8
    bool(stor7.length) = 0
    stor7.length.field_1 = 3
    stor7.length.field_8 = 'BNC' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2[address(msg.sender)] = 100 * 10^6 * 10^stor6
    stor0 = 100 * 10^6 * 10^stor6
    return code.data[434 len 2315]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
address owner;
mapping of uint256 balances;
mapping of uint256 hold_balances;
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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function hold_balances(address arg1) {
    return hold_balances[arg1]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if owner == msg.sender:
        owner = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function pending(address arg1) {
    if owner != msg.sender:
        return 0
    if balances[address(arg1)] <= 0:
        return 0
    balances[address(arg1)] = 0
    hold_balances[address(arg1)] += balances[address(arg1)]
    emit Pending(balances[address(arg1)], 1, arg1);
    return 1
}

function undoPending(address arg1) {
    if owner != msg.sender:
        return 0
    if hold_balances[address(arg1)] <= 0:
        return 0
    hold_balances[address(arg1)] = 0
    balances[address(arg1)] += hold_balances[address(arg1)]
    emit Pending(hold_balances[address(arg1)], 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balances[address(arg1)] >= arg3
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    balances[address(arg2)] += arg3
    balances[arg1] -= arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
