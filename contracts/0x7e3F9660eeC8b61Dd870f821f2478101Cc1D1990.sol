contract main {


// =======================  Init code  ======================


array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
address stor5;
mapping of uint256 stor6;

function _fallback() {
    stor4 = 10^12
    bool(stor1.length) = 0
    stor1.length.field_1 = 20
    stor1.length.field_8 = 'CARBON TOKEN CLASSIC' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'CTC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 4
    stor5 = msg.sender
    stor6[stor5] = stor4
    return code.data[580 len 5380]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
mapping of uint256 balances;
mapping of uint256 allowance;

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

function balanceOf(address arg1) {
    return balances[address(arg1)]
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
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function drain_alltokens(address arg1, uint256 arg2) {
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function drain() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferCoins(address arg1, uint256 arg2) {
    require arg1
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balances[address(arg1)] >= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balances[address(arg1)] -= arg3
    balances[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    if msg.sender == owner:
        balances[address(msg.sender)] -= arg2
        balances[address(arg1)] += arg2
    else:
        emit Burn((arg2 / 1000), owner);
        balances[address(msg.sender)] = balances[address(msg.sender)] - arg2 - (arg2 / 1000)
        balances[address(arg1)] += arg2
        balances[stor5] += arg2 / 1000
        emit TransferFees(msg.sender, arg2 / 1000);
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
